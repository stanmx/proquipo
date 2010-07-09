class CategoriesController < ApplicationController
load_and_authorize_resource
#authorize_resource :resource => :categories

  # GET /categories
  # GET /categories.xml
  def index
    @categories = Category.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @categories }
    end
  end  
  
  def products   
    @category = Category.find(params[:id])
    @products = @category.products
    
    respond_to do |format|
      format.html
      format.xml  { render :xml => @category }
    end
  end
  
  def used_products  
  end
  

  # GET /categories/1
  # GET /categories/1.xml
  def show

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @category }
    end
  end

  # GET /categories/new
  # GET /categories/new.xml
  def new
    @category = Category.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @category }
    end
  end

  # GET /categories/1/edit
  def edit
  end

  # POST /categories
  # POST /categories.xml
  def create

    respond_to do |format|
      if @category.save
        flash[:notice] = 'La categoria ha sido exitosamente creada.'
        format.html { redirect_to(@category) }
        format.xml  { render :xml => @category, :status => :created, :location => @category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /categories/1
  # PUT /categories/1.xml
  def update

    respond_to do |format|
      if @category.update_attributes(params[:category])
        flash[:notice] = 'La categoria ha sido exitosamente actualizada.'
        format.html { redirect_to(@category) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.xml
  def destroy
    @category.destroy

    respond_to do |format|
      format.html { redirect_to(categories_url) }
      format.xml  { head :ok }
    end
  end
end
