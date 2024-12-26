class ShopifiesController < ApplicationController
  allow_unauthenticated_access only: %i[ show index ]
  before_action :set_shopify, only: %i[ show edit update destroy ]

  # GET /shopifies or /shopifies.json
  def index
    @shopifies = Shopify.all
  end

  # GET /shopifies/1 or /shopifies/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /shopifies/new
  def new
    @shopify = Shopify.new
  end

  # GET /shopifies/1/edit
  def edit
  end

  # POST /shopifies or /shopifies.json
  def create
    @shopify = Shopify.new(shopify_params)

    respond_to do |format|
      if @shopify.save
        format.html { redirect_to @shopify, notice: "Shopify was successfully created." }
        format.json { render :show, status: :created, location: @shopify }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shopify.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shopifies/1 or /shopifies/1.json
  def update
    respond_to do |format|
      if @shopify.update(shopify_params)
        format.html { redirect_to @shopify, notice: "Shopify was successfully updated." }
        format.json { render :show, status: :ok, location: @shopify }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shopify.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shopifies/1 or /shopifies/1.json
  def destroy
    @shopify.destroy!

    respond_to do |format|
      format.html { redirect_to shopifies_path, status: :see_other, notice: "Shopify was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopify
      @shopify = Shopify.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def shopify_params
      params.expect(shopify: [ :title, :summary, :body, :date ])
    end
end
