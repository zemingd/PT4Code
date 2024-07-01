n,k = gets.split.map(&:to_i)
l = gets.split.map(&:to_i)
l_reverse = l.sort.reverse

long = 0
l_reverse.each_with_index do |l,i|
  if i < k #until ではだめ
    long += l
  end
end

puts long