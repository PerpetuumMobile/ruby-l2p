#Better Logger

=begin
puts 'Desription:
Better Logger.
The output from that last logger was kind of hard to read, and it would just get worse the more you used it.
It would be so much easier to read if it indented the lines in the inner blocks.
To do this, you\'ll need to keep track of how deeply nested you are every time the logger wants to write something.
To do this, use a global variable, a variable you can see from anywhere in your code.
To make a global variable, just precede your variable name with $, like these: $global, $nestingDepth, and $bigTopPeeWee.
In the end, your logger should output code like this:

Beginning "outer block"...
  Beginning "some little block"...
    Beginning "teeny-tiny block"...
    ..."teeny-tiny block" finished, returning:  lots of love
  ..."some little block" finished, returning:  42
  Beginning "yet another block"...
  ..."yet another block" finished, returning:  I love Indian food!
..."outer block" finished, returning:  true'
puts
=end


$deep = -1
def log description, &code
	$deep = $deep + 1
	left = '	' * $deep + description
	puts left + ' started.'
	block_result = code.call
	puts left + ' finished with result: ' + block_result.to_s
	$deep = $deep - 1
end

log 'some block' do
	log 'some other block' do
		5
	end
	false
end