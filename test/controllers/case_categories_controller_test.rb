require 'test_helper'

class CaseCategoriesControllerTest < ActionController::TestCase
  setup do
    @case_category = case_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:case_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create case_category" do
    assert_difference('CaseCategory.count') do
      post :create, case_category: { name: @case_category.name }
    end

    assert_redirected_to case_category_path(assigns(:case_category))
  end

  test "should show case_category" do
    get :show, id: @case_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @case_category
    assert_response :success
  end

  test "should update case_category" do
    patch :update, id: @case_category, case_category: { name: @case_category.name }
    assert_redirected_to case_category_path(assigns(:case_category))
  end

  test "should destroy case_category" do
    assert_difference('CaseCategory.count', -1) do
      delete :destroy, id: @case_category
    end

    assert_redirected_to case_categories_path
  end
end
