n, m = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
as.sort! {|i, j| j <=> i}

m.times do
  d = as[0] / 2
  as.delete_at(0)
  as.each_with_index do |a, i|
    if a < d
      as.insert(i, d)
      break
    end
  end
  if as.size != n
    as.push(d)
  end
end

puts as.inject(:+)
