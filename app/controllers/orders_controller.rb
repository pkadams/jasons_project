class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index

    if params[:employee][:username] != 'perry' || params[:employee][:password] != '1234' 

      raise ActionController::RoutingError.new('Not Found')
    end
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @price = 0
    unless @order.Satay_Wraps.nil? || @order.Satay_Wraps == 0
      @price = @price + @order.Satay_Wraps * 625
    end


    unless @order.Pad_Thai_Chicken.nil? || @order.Pad_Thai_Chicken == 0
      @price = @price + @order.Pad_Thai_Chicken * 775
    end

    unless @order.Pad_Thai_Beef.nil? || @order.Pad_Thai_Beef == 0
      @price = @price + @order.Pad_Thai_Beef * 775
    end

    unless @order.Pad_Thai_Shrimp.nil? || @order.Pad_Thai_Shrimp == 0
      @price = @price + @order.Pad_Thai_Shrimp * 825
    end

    unless @order.Pad_Thai_Shrimp.nil? || @order.Pad_Thai_Shrimp == 0
      @price = @price + @order.Pad_Thai_Shrimp * 825
    end

     unless @order.Garlic_Noodles_Chicken.nil? || @order.Garlic_Noodles_Chicken == 0
      @price = @price + @order.Garlic_Noodles_Chicken * 775
    end

     unless @order.Garlic_Noodles_Beef.nil? || @order.Garlic_Noodles_Beef == 0
      @price = @price + @order.Garlic_Noodles_Beef * 775
    end

     unless @order.Garlic_Noodles_Shrimp.nil? || @order.Garlic_Noodles_Shrimp == 0
      @price = @price + @order.Garlic_Noodles_Shrimp * 825
    end
      @price = @price/100.0
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    @customer = Customer.new
    @customer.email = @order.email

    check_customer = Customer.find_by(email: @order.email)

    unless check_customer
      @customer.save

    end

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:Satay_Wraps, :Pad_Thai_Chicken, :Pad_Thai_Beef, :Pad_Thai_Shrimp, :Garlic_Noodles_Chicken, :Garlic_Noodles_Beef, :Garlic_Noodles_Chicken, :Garlic_Noodles_Shrimp, :Notes, :email)
    end
end
