class RpsController < ApplicationController

	def weapons
		return ["Rock", "Paper", "Scissors"]
	end

	def submitted

		@player_weapon = params["weapon"]
		@message = ""
		@ready = true

		if !weapons.include?(@player_weapon) || !@player_weapon
			@ready = false
			@message = "No weapon chosen. Please try again."
		else 
			@computer_weapon = weapons.sample


			if @player_weapon == @computer_weapon
				@message = "It is a tie!"

			elsif (@player_weapon == "Rock" && @computer_weapon == "Scissors") || (@player_weapon == "Paper" && @computer_weapon == "Rock") || (@player_weapon == "Scissors" && @computer_weapon == "Paper")
				@message = "Player win!"

			 else
			 	@message = "Computer win!"
			 end

		end

	end

end