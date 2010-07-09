class ProductsController < ApplicationController
load_and_authorize_resource
  
  #antes de filtrar la informacion se corre setup_combos aplicado solo a los metodos	
  before_filter :setup_combos, :only => [:new, :create, :edit, :update]

	
  # GET /products
  # GET /products.xml
  def index
    @products = Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @products }
    end
  end 
  
  
  def used_products
  @products = Category.find(params[:category_id]).products.used?(true)
  
  respond_to do |format|
    format.html # index.html.erb
    format.xml  { render :xml => @products }
  end
  end
  
  def new_products
  @products = Category.find(params[:category_id]).products.used?(false)
  
  respond_to do |format|
    format.html # index.html.erb
    format.xml  { render :xml => @products }
  end
  end
  

  # GET /products/1
  # GET /products/1.xml
  def show

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product }
    end
  end

  # GET /products/new
  # GET /products/new.xml
  def new
    @product = Product.new
    @product.photos.build 

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product }
    end
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.xml
  def create

    respond_to do |format|
      if @product.save
        flash[:notice] = 'Producto exitosamente creado.'
        format.html { redirect_to(@product) }
        format.xml  { render :xml => @product, :status => :created, :location => @product }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.xml
  def update

    respond_to do |format|
      if @product.update_attributes(params[:product])
        flash[:notice] = 'Producto exitosamente actualizado.'
        format.html { redirect_to(@product) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.xml
  def destroy
    @product.destroy

    respond_to do |format|
      format.html { redirect_to(categories_url) }
      format.xml  { head :ok }
    end
  end

private
  #definimos un metodo privado para llamar todas las categorias
  def setup_combos
    @categories = Category.all
  end    
  
end
