N,K = gets.chomp.split(' ').map(&:to_i)
a =gets.chomp.split(' ').map(&:to_i)
max = 0
K.times do |i|
  sum = 0
  a.each do |j|
    sum+=i^j
  end
    if sum > max
      max = sum
    end
end
    puts max