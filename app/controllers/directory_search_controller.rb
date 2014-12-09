class DirectorySearchController < ApplicationController

  def index
    @tree = Array.new()
    $hash_brand_type = Hash.new("|     ")
    $hash_brand_type[""] = ""
    $hash_brand_type["└"] = "     "
  	export_directory_tree(Pathname.new(""),"", "", "", Pathname.new("/etc"))
    return @tree
  end

  def export_directory_tree(path, brand_absolute, brand_relative, brand_type, file)
    @tree << "#{brand_absolute}#{brand_type}#{brand_relative}#{file}"
    visit_children_nodes(path + file, brand_absolute + $hash_brand_type[brand_type] )
  end

  def visit_children_nodes(path, brand_absolute)
    return unless FileTest.directory?(path)
    return unless FileTest.readable?(path)
    files = path.children(false).sort
    return if files.empty?
    brand_type = Array.new(files.length - 1, "├") << "└"
    brand_view = files.zip(brand_type)
    brand_view.each { |element| export_directory_tree(path, brand_absolute, "─────────────", element[1], element[0])}
  end
end