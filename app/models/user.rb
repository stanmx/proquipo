class User < ActiveRecord::Base
  acts_as_authentic 
  
  ROLES = %w[admin]
   
end
