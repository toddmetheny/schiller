class MarketEarningsController < ApplicationController
  before_action :set_market_earning, only: [:show, :edit, :update, :destroy]

  # GET /market_earnings
  # GET /market_earnings.json
  def index
    @market_earnings = MarketEarning.all
  end

  # GET /market_earnings/1
  # GET /market_earnings/1.json
  def show
  end

  # GET /market_earnings/new
  def new
    @market_earning = MarketEarning.new
  end

  # GET /market_earnings/1/edit
  def edit
  end

  # POST /market_earnings
  # POST /market_earnings.json
  def create
    @market_earning = MarketEarning.new(market_earning_params)

    respond_to do |format|
      if @market_earning.save
        format.html { redirect_to @market_earning, notice: 'Market earning was successfully created.' }
        format.json { render :show, status: :created, location: @market_earning }
      else
        format.html { render :new }
        format.json { render json: @market_earning.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /market_earnings/1
  # PATCH/PUT /market_earnings/1.json
  def update
    respond_to do |format|
      if @market_earning.update(market_earning_params)
        format.html { redirect_to @market_earning, notice: 'Market earning was successfully updated.' }
        format.json { render :show, status: :ok, location: @market_earning }
      else
        format.html { render :edit }
        format.json { render json: @market_earning.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /market_earnings/1
  # DELETE /market_earnings/1.json
  def destroy
    @market_earning.destroy
    respond_to do |format|
      format.html { redirect_to market_earnings_url, notice: 'Market earning was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_market_earning
      @market_earning = MarketEarning.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def market_earning_params
      params.require(:market_earning).permit(:date, :consumer_price_index, :dividend, :date_fraction, :long_interest_rate, :real_price, :real_dividend, :real_earnings, :cape)
    end
end
