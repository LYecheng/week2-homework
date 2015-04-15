class GreetController < ApplicationController

	def say_hello
		
		if params["salutation"] != nil
			@word = "Hello, " + params["salutation"] + "!"	
		else
			@word = "Hello!"
		end	

	end

end