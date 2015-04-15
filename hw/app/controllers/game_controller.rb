class GameController < ApplicationController

	def roll
		@numbers = [1, 2, 3, 4, 5, 6].sample(2)
		@sum = @numbers[0] + @numbers[1]
		@goal = params["point"]

		if @goal

			if @sum == 7
				@message = "You Lose!"
				@button_text = "Start over"
			elsif @sum == @goal
				@message = "You Win!"
				@button_text = "Start over"
			else
				@message = "Your goal is #{@goal} but you rolled #{@sum}. You can roll again."
				@button_text = "Roll Again"
			end

		else

			if @sum == 7 || @sum == 11
				@message = "You Win!"
				@button_text = "Start over"
			elsif @sum == 2 || @sum ==3 || @sum == 12
				@message = "You Lose!"
				@button_text = "Start over"
			else
				@goal = @sum
				@goal_msg = "Your goal is now #{@goal}."
				@message = "Now try to get #{@goal} again before you roll a 7."
				@button_text = "Roll the dice"
			end
			
		end
		
	end

end