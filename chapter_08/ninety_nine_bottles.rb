def englishNumber number
  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'no more'
  end

  numString = ''
  onesPlace = ['one',     'two',       'three',    'four',     'five',    'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',   'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  sizes     = {'trillion':1000000000,   'million':1000000,     'thousand':1000,      'hundred':100}

  left          = number
  sizes.each do |size_name, size_high|
    write       = left / size_high
    left        = left % size_high
    if write > 0
      size      = englishNumber write
      numString = numString + size + ' ' + size_name.to_s
      if left > 0
       numString = numString + ' '
      end
    end
  end

  write         = left / 10
  left          = left % 10
  if write > 0
    if (write == 1) and (left > 0)
      numString = numString + teenagers[left - 1]
      left      = 0
    else
      numString = numString + tensPlace[write - 1]
    end
    if left > 0
      numString = numString + '-'
    end
  end

  write = left
  if write > 0
    numString = numString + onesPlace[write - 1]
  end

  numString
end

maxbottles = 99999

def plural bottles
	return (englishNumber bottles) + ' bottle' + ('s'*(bottles!=1 ? 1 : 0)) + ' of beer'
end

def sing_first_line bottles, where
	return (plural bottles).capitalize + where + ', ' + (plural bottles) + '.'
end

def sing_second_line bottles, where
	return 'Take one down and pass it around, ' + (plural bottles) + where + '.'
end

def sing_last_line bottles, where
	return 'Go to the store and buy some more, ' + (plural bottles) + where + '.'
end

bottles = maxbottles
where     = ' on the wall'
while bottles > 0
	puts sing_first_line(bottles, where)
	bottles = bottles -1
	puts sing_second_line(bottles, where)
end

puts sing_first_line(bottles, where)
puts sing_last_line(maxbottles, where)