n = gets.to_i
as = gets.split.map(&:to_i)

ans = Float::INFINITY

bs = (0..200000).to_a
bs.bsearch do |b|
  count = 0
  as.each.with_index(1) do |a,i|
    count += (a - (b+i)).abs
  end
  ans = [ans, count].min
  0 - count
end

puts ans
