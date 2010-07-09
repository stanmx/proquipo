class Product < ActiveRecord::Base
	belongs_to :category
	has_many :photos, :dependent => :destroy
  	accepts_nested_attributes_for :photos, :reject_if => lambda { |a| a[:photo].blank? }, :allow_destroy => true

    named_scope :used?, lambda { |is_used| { :conditions => [ "used =?", is_used ] } }
    
    validates_length_of :title, :maximum => 20, :message => "El titulo solo puede tener 20 caracteres."
    validates_length_of :description, :maximum => 500, :message => "La descripcion solo puede tener 500 caracteres."

   USED_CATEGORIES = %w(demo seminuevo reconstruido aceptable debajo_de_aceptable)

end
