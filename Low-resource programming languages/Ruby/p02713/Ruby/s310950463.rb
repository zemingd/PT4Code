K = gets.to_i

sum = 0
K.times do |a|
  K.times do |b|
    K.times do |c|
      sum += (a+1).gcd(b+1).gcd(c+1)
    end
  end
end

puts sum
