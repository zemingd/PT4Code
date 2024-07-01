N, L = gets.split.map(&:to_i)
tastes = (1..N).map{|n| L+n-1 }

minimum = tastes[-1]
index = N-1
tastes.each_with_index do |n, i|
  if n.abs < minimum
    minimum = n
    index = i
  end
end

tastes.delete_at(index)
p tastes.inject(:+)