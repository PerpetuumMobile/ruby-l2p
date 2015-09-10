#OrangeTree
class OrangeTree

	def initialize
		@orangeTreeHeight 	= 0
		@orangeTreeAge 		= 0
		@orangeTreeLives	= true
	end

	def height
		@orangeTreeHeight
	end

	def alive?
		@orangeTreeLives
	end

	def countTheOranges
		@oranges
	end

	def pickAnOrange
		if @oranges > 0
			@oranges 		= @oranges -1
			puts 'How delicious the orange was...'
		else
			puts 'There are no more oranges to pick this year :(.'
		end
	end

	def oneYearPasses
		@oranges 			= 0
		@orangeTreeAge 		= @orangeTreeAge + 1
		@orangeTreeHeight 	= @orangeTreeHeight + 1
		if @orangeTreeAge >= 10
			puts 'OrangeTree has died. RIP'
			@orangeTreeLives = false
		end
		if @orangeTreeAge > 3
			@oranges 		= (@orangeTreeAge * 1.2).to_i
		end
	end

end

myTree 						= OrangeTree.new
MaxDeedsInOneYear 			= 10
while myTree.alive?
	deedsDone 				= 0
	while deedsDone < MaxDeedsInOneYear
		deedsDone 			= deedsDone + 1
		puts 'Make you move (height, count, pick, next):'
		deed 				= gets.chomp
		if deed == 'height'
			puts 'OrangeTree height is ' + myTree.height.to_s
		elsif deed == 'count'
			puts 'Oranges count is ' + myTree.countTheOranges.to_s
		elsif deed == 'pick'
			myTree.pickAnOrange
		elsif deed == 'next'
			deedsDone 		= 10
		else
			puts 'Wrong deed, you miss the turn.'
		end
		puts 'Deeds left ' + (MaxDeedsInOneYear - deedsDone).to_s
	end
	myTree.oneYearPasses
end