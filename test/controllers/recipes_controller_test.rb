require 'test_helper'

class RecipesControllerTest < ActionController::TestCase
  test "should get index" do
    get "/recipies/index"
    assert_response :success
  end

end
