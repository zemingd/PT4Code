n, k = gets.chomp.split(' ').map(&:to_i)

ar = []
n.times do |n|
  ar << gets.chomp.to_i
end

ar = ar.sort.reverse

min = ar.first * k

ar.each_cons(k) do |s|
  n = s.first - s.last
  if n < min
    min = n
  end
end

puts min
