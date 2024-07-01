N, L = gets.split.map(&:to_i)
tastes = (1..N).map{|n| L+n-1 }

min_abs = Float::INFINITY
index = 0
tastes.each_with_index do |n, i|
  if n.abs < min_abs
    min_abs = n
    index = i
  end
end

tastes.delete_at(index)
p tastes.inject(:+)