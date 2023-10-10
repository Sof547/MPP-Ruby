def integer_to_roman(integer)
  roman_numerals = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }

  result = ''

  roman_numerals.each do |value, numeral|
    while integer >= value
      result += numeral
      integer -= value
    end
  end

  result
end

def print_res(num)
  puts "#{num} -> #{integer_to_roman(num)}"
end

print_res(1990) # 'MCMXC'
print_res(2008)  # 'MMVIII'
print_res(1666)  # 'MDCLXVI'
