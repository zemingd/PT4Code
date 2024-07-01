require 'prime'
n = gets.to_i
nums = gets.split.map(&:to_i)
hash = Hash.new(0)
gcd = nums.first
set = false
nums.each do |num|
  gcd = gcd.gcd(num)
  # unless set
  #   Prime.prime_division(num).each do |k, _|
  #     hash[k] += 1
  #     set = true if hash[k] > 1
  #   end
  # end
end
if gcd > 1
  puts "not coprime"
else
  if set
    puts "setwise coprime"
  else
    puts "pairwise coprime"
  end
end
