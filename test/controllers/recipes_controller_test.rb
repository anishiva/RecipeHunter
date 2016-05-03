require 'test_helper'

class RecipesControllerTest < ActionController::TestCase
  test "should get index" do
    get "recipes#index"
    assert_response :success
  end

end
