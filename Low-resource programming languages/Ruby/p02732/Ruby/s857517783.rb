N = gets.to_i
A = gets.split(' ').map(&:to_i)

N.times do |i|
  count = 0
  
  N.times do |j|
    N.times do |k|
      next if i == j or i == k
      count +=1 if j == k
    end
  end
  
  puts count
end
