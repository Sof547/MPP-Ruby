def correct_ipv4?(address)
  nums = address.split('.')

  return false if nums.length != 4

  nums.each do |num|
    unless num.match?(/\A\d{1,3}\z/) && num.to_i.between?(0, 255) && num.to_i.to_s == num
      return false
    end
  end

  true
end

puts correct_ipv4?("192.168.0.1") # true
puts correct_ipv4?("192.168.100.250") # true
puts correct_ipv4?("0.0.0.0") # true
puts correct_ipv4?("192.168.1.01") # false
puts correct_ipv4?("192.168.1.1000") # false
puts correct_ipv4?("256.256.256.256") # false

