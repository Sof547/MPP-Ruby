def roman_to_integer(roman)
  roman_numerals = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  result = 0
  prev_value = 0

  roman.reverse.each_char do |char|
    value = roman_numerals[char]

    if !value
      puts "Невірний символ у римській цифрі: #{char}"
      return
    end

    if value < prev_value
      result -= value
    else
      result += value
    end

    prev_value = value
  end

  result
end

def print_res(num)
  puts "#{num} -> #{roman_to_integer(num)}"
end

print_res "MCMXC" # 1990
print_res "MMVIII" # 2008
print_res "MDCLXVI" # 1666

