require_relative '../test_helper'

class RecipesControllerTest < ActionController::TestCase
  test "should get index" do
  	#byebug
  	#binding.pry
    get :index
    assert_response :success
  end

end
