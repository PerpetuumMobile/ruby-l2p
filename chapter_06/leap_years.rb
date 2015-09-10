#optimized, 2 cycles
puts 'Enter start year:'
#startyear=gets.chomp.to_i
startyear=1
puts 'Enter end year:'
#endyear=gets.chomp.to_i
endyear=11112603
checkyear=startyear
puts 'Look at leap years between them:'
reminder = startyear%4
if reminder==0
  checkyear=startyear
else
  currentyear=startyear+4-reminder
end
while checkyear<=endyear
	if (checkyear%100)!=0 or (checkyear%400)==0
		#puts checkyear.to_s
	end
	checkyear=checkyear+4
end
puts 'The end.'