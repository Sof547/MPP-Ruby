def factorial(number)
  n = number.to_i

  if n < 0
    raise ArgumentError, "Факторіал визначений для невід'ємних цілих чисел."
  end

  result = 1

  if n > 0
    (1..n).each do |i|
      result *= i
    end
  end

  result
end

begin
  number = ARGV[0]

  if number =~ /^-?\d+$/
    result = factorial(number)
    puts "#{number}! = #{result}"
  else
    raise ArgumentError, "Введене значення не є цілим числом."
  end
rescue ArgumentError => e
  puts "Помилка: #{e.message}"
end
