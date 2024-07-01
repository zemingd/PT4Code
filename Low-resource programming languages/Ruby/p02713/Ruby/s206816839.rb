n = gets.chomp.to_i
sum = 0
n.times do |i|
  n.times do |j|
    n.times do |k|
      sum += (i+1).gcd(j+1).gcd(k+1)
    end
  end
end

puts sum