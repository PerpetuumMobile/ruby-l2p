def englishNumber number
  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
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

puts englishNumber 1234567890