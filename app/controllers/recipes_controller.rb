class RecipesController < ApplicationController
  def index
  	@search_term = params[:search]
  	@recipes = Recipe.for(@search_term).paginate(page: params[:page], per_page: 5)
  end
end