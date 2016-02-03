require 'json'

class HacksocEvent 

	def api
	
	 hacksoc = {:events => "techfest", :year => "2016", :organisers =>"Luke Geeson"}
     hacksoc.to_json
	end
end

