class ProductsasController < ApplicationController
  # GET /productsas
  # GET /productsas.json
  def index
    @productsas = Productsa.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @productsas }
    end
  end

  # GET /productsas/1
  # GET /productsas/1.json
  def show
    @productsa = Productsa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @productsa }
    end
  end

  # GET /productsas/new
  # GET /productsas/new.json
  def new
    @productsa = Productsa.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @productsa }
    end
  end

  # GET /productsas/1/edit
  def edit
    @productsa = Productsa.find(params[:id])
  end

  # POST /productsas
  # POST /productsas.json
  def create
    @productsa = Productsa.new(params[:productsa])

    respond_to do |format|
      if @productsa.save
        format.html { redirect_to @productsa, notice: 'Productsa was successfully created.' }
        format.json { render json: @productsa, status: :created, location: @productsa }
      else
        format.html { render action: "new" }
        format.json { render json: @productsa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /productsas/1
  # PUT /productsas/1.json
  def update
    @productsa = Productsa.find(params[:id])

    respond_to do |format|
      if @productsa.update_attributes(params[:productsa])
        format.html { redirect_to @productsa, notice: 'Productsa was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @productsa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productsas/1
  # DELETE /productsas/1.json
  def destroy
    @productsa = Productsa.find(params[:id])
    @productsa.destroy

    respond_to do |format|
      format.html { redirect_to productsas_url }
      format.json { head :no_content }
    end
  end
end
