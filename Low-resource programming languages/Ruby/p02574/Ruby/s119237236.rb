require 'prime'
n = gets.to_i
nums = gets.split.map(&:to_i).sort
hash = Hash.new(0)
gcd = nums.first
set = false
time = Time.now
nums.shuffle!
interrupted = false
nums.each_with_index do |num, index|
  gcd = gcd.gcd(num)
  next if interrupted
  if index % 1000 == 0
    unless Time.now - 1.85 < time
      interrupted = true
    end
  end
  unless set
    Prime.prime_division(num).each do |k, _|
      hash[k] += 1
      set = true if hash[k] > 1
    end
  end
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
