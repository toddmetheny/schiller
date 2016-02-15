require 'test_helper'

class MarketEarningsControllerTest < ActionController::TestCase
  setup do
    @market_earning = market_earnings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:market_earnings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create market_earning" do
    assert_difference('MarketEarning.count') do
      post :create, market_earning: { cape: @market_earning.cape, consumer_price_index: @market_earning.consumer_price_index, date: @market_earning.date, date_fraction: @market_earning.date_fraction, dividend: @market_earning.dividend, long_interest_rate: @market_earning.long_interest_rate, real_dividend: @market_earning.real_dividend, real_earnings: @market_earning.real_earnings, real_price: @market_earning.real_price }
    end

    assert_redirected_to market_earning_path(assigns(:market_earning))
  end

  test "should show market_earning" do
    get :show, id: @market_earning
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @market_earning
    assert_response :success
  end

  test "should update market_earning" do
    patch :update, id: @market_earning, market_earning: { cape: @market_earning.cape, consumer_price_index: @market_earning.consumer_price_index, date: @market_earning.date, date_fraction: @market_earning.date_fraction, dividend: @market_earning.dividend, long_interest_rate: @market_earning.long_interest_rate, real_dividend: @market_earning.real_dividend, real_earnings: @market_earning.real_earnings, real_price: @market_earning.real_price }
    assert_redirected_to market_earning_path(assigns(:market_earning))
  end

  test "should destroy market_earning" do
    assert_difference('MarketEarning.count', -1) do
      delete :destroy, id: @market_earning
    end

    assert_redirected_to market_earnings_path
  end
end
