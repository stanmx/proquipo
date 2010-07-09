class Category < ActiveRecord::Base
	has_many :products
	has_attached_file :image, :styles => { :thumb => "290x150#", :big => "800x600>" },  
   					          :url => "/category_images/:id/:style/:basename.:extension",  
                              :path => ":rails_root/public/category_images/:id/:style/:basename.:extension" 
                              
    validates_attachment_presence :image  
    validates_attachment_size :image, :less_than => 5.megabytes  
    validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']    
    
    validates_length_of :title, :maximum => 18, :message => "El titulo solo puede tener 18 caracteres."
    validates_length_of :description, :maximum => 250, :message => "La descripcion solo puede tener 250 caracteres."
                                
end
