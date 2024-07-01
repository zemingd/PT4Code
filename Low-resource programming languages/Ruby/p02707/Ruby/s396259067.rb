n = gets.chomp.to_i
array = gets.chomp.split.map(&:to_i)

hash = array.group_by(&:itself).map{ |key, value| [key, value.count] }.to_h

1.upto(n) do |i|
  p hash[i] || 0
end
