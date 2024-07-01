N = gets.to_i
A = gets.split.map(&:to_i)

count = N

N.times do |i|
  N.times do |j|
    next if i == j
    if A[i] % A[j] == 0
      count -= 1
      break
    end
  end
end

puts count