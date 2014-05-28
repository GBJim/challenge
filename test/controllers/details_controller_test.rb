require 'test_helper'

class DetailsControllerTest < ActionController::TestCase
  setup do
    @detail = details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detail" do
    assert_difference('Detail.count') do
      post :create, detail: { additionalInfo: @detail.additionalInfo, availability: @detail.availability, description: @detail.description, durationNumber: @detail.durationNumber, durationUnit: @detail.durationUnit, groupSize: @detail.groupSize, priceNumber: @detail.priceNumber, pricePer: @detail.pricePer, public: @detail.public, title: @detail.title, whatExclude: @detail.whatExclude, whatInclude: @detail.whatInclude }
    end

    assert_redirected_to detail_path(assigns(:detail))
  end

  test "should show detail" do
    get :show, id: @detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detail
    assert_response :success
  end

  test "should update detail" do
    patch :update, id: @detail, detail: { additionalInfo: @detail.additionalInfo, availability: @detail.availability, description: @detail.description, durationNumber: @detail.durationNumber, durationUnit: @detail.durationUnit, groupSize: @detail.groupSize, priceNumber: @detail.priceNumber, pricePer: @detail.pricePer, public: @detail.public, title: @detail.title, whatExclude: @detail.whatExclude, whatInclude: @detail.whatInclude }
    assert_redirected_to detail_path(assigns(:detail))
  end

  test "should destroy detail" do
    assert_difference('Detail.count', -1) do
      delete :destroy, id: @detail
    end

    assert_redirected_to details_path
  end
end
