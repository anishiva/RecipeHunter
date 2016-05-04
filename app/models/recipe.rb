class Recipe
	include HTTParty
		key_value = ENV['FOOD2FORK_KEY'] || "0e20df322974e6e7b32b75e7dd7a8338"
		hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
		base_uri "http://#{hostport}/api"
		default_params key: key_value
		default_params fields: "image_url,title,social_rank,f2f_url", q: "search"
		format :json
	
	def self.for (term)
		get("/search",query: {q:term})["recipes"]
	end
end
