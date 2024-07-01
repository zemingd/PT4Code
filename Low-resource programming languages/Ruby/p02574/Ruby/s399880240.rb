require 'prime'
n = gets.to_i
nums = gets.split.map(&:to_i).sort
hash = Hash.new(0)
gcd = nums.first
set = false
time = Time.now
interrupted = false
nums.each do |num|
  gcd = gcd.gcd(num)
  if Time.now - 1.5 < time
    unless set
      Prime.prime_division(num).each do |k, _|
        hash[k] += 1
        set = true if hash[k] > 1
      end
    end
  else
    interrupted = true
  end
end
if gcd > 1
  puts "not coprime"
else
  if set
    puts "setwise coprime"
  else
    if interrupted
      puts "setwise coprime"
    else
      puts "pairwise coprime"
    end
  end
end
