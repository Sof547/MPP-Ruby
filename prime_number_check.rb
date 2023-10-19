def is_prime?(number)
  n = number.to_i
  
  return false if n <= 1

  (2..Math.sqrt(n)).each do |i|
    return false if n % i == 0
  end
  
  true
end

user_input = ARGV[0]

begin
  if user_input =~ /^-?\d+$/
    number = user_input.to_i
    if number >= 0
      if is_prime?(number)
        puts "#{number} - просте число."
      else
        puts "#{number} - не просте число."
      end
    else
      raise ArgumentError, "Некоректний ввід. Введене значення менше нуля."
    end
  else
    raise ArgumentError, "Некоректний ввід. Введіть ціле число."
  end
rescue ArgumentError => e
  puts "Error: #{e.message}"
end
