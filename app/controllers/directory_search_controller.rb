class DirectorySearchController < ApplicationController
  def index
  	@tree=""
  	export_directory_tree('/etc')
  end
  def export_directory_tree(directory)
  	Dir.foreach(directory) { |element|
  		if Dir.exist?('directory') 
  			@tree << '|---- '+element
  			export_directory_tree(element)
  		else
  			@tree << '|---- '+element
  		end
  	}
  end
end
