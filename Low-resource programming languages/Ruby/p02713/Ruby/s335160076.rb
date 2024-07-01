n = 0
K = gets.to_i
K.times do |a|
  K.times do |b|
    K.times do |c|
      n += (a+1).gcd(b+1).gcd(c+1)
    end
  end
end
p n