class Photo < ActiveRecord::Base
	belongs_to :product
	has_attached_file :photo, :styles => { :thumb => "290x150#", :big => "800x600>" },
	  				          :url => "/products_images/:id/:style/:basename.:extension",  
							  :path => ":rails_root/public/products_images/:id/:style/:basename.:extension"
end
