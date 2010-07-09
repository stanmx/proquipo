class Ability
  include CanCan::Ability
  
  def initialize(user)
  	user ||= User.new #guest user
  	can :manage, :all if user.role == "admin"
  	else
	can [ :read, :new_products, :used_products ], :all 		
  end

end