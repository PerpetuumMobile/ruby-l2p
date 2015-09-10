#print out the information from the array
table = ['Table of Contents', [['Numbers', 1], ['Letters', 72], ['Variables', 118]]]
chapter_name = 'Chapter '
page_name = 'page '
line_width = 42
puts table[0].center line_width
puts
table[1].length.times do |chapter_number|
	puts (chapter_name + (chapter_number + 1).to_s + ': ' + table[1][chapter_number][0]).ljust(line_width/2) + (page_name + table[1][chapter_number][1].to_s).rjust(line_width/2)
end