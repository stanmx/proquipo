ActionController::Routing::Routes.draw do |map|
  map.resources :products
  map.resources :categories

  map.resources :users

  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
  
  map.resources :user_sessions
  
  map.resources :pages
  map.root :controller => "pages", :action =>  "index" 
  
  map.resources :categories, :member => { :products => :get }
  
  map.used_products 'categories/:category_id/used_products', :controller => :products,  :action => 'used_products'
  map.new_products 'categories/:category_id/new_products', :controller => :products,  :action => 'new_products'
  
  map.with_options :controller => 'pages' do |page|
  	page.panorama_general 'panorama_general', :action => 'panorama_general'
  		page.mision 'mision', :action => 'mision'
  		page.valores_escenciales 'valores_escenciales', :action => 'valores_escenciales'
  		page.beneficio_a_cliente 'beneficio_a_cliente', :action => 'beneficio_a_cliente'
  		page.sistema_de_ventas 'sistema_de_ventas', :action => 'sistema_de_ventas'
  		page.politica_de_ventas 'politica_de_ventas', :action => 'politica_de_ventas'
  		page.proquipotv 'proquipotv', :action => 'proquipotv'
  		page.refacciones 'refacciones', :action => 'refacciones'
  		page.como_realizar_su_pedido 'como_realizar_su_pedido', :action => 'como_realizar_su_pedido'
  		page.politicas_de_devolucion 'politicas_de_devolucion', :action => 'politicas_de_devolucion'
  		page.reparacion_certificada 'reparacion_certificada', :action => 'reparacion_certificada'
  		page.promesa_de_beneficio 'promesa_de_beneficio', :action => 'promesa_de_beneficio'
  		page.comparacion 'comparacion', :action => 'comparacion'
  		page.garantia 'garantia', :action => 'garantia'
  		page.solicitud_de_garantias 'solicitud_de_garantias', :action => 'solicitud_de_garantias'
  		page.asistencia_tecnica 'asistencia_tecnica', :action => 'asistencia_tecnica'
  		page.tiempos_de_entrega 'tiempos_de_entrega', :action => 'tiempos_de_entrega'
  		page.notas_importantes 'notas_importantes', :action => 'notas_importantes'
  		page.limites_y_exclusiones 'limites_y_exclusiones', :action => 'limites_y_exclusiones'
  end
  
 
  
  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
