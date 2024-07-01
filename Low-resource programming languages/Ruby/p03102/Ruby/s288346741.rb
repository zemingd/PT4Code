N, M, C = gets.chomp.split(' ').map(&:to_i)

BS = gets.chomp.split(' ').map(&:to_i)


@res = 0
(1..N).each do |n|
  as = gets.chomp.split(' ').map(&:to_i)
  sum = C
  as.map.each_with_index do |a, i|
    sum = sum + a*BS[i]
  end
  if sum > 0
    @res += 1
  end
end

puts @res
