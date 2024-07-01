n = gets.chomp.to_i
x = gets.chomp.split(' ').map(&:to_i)

a = []
n.times{|i| a.push( {:index => i, :value => x[i]} )}
a.sort!{|lhs, rhs| lhs[:value] <=> rhs[:value]}

n.times do |i|
  j = a.find_index{|obj| obj[:index] == i}
  
  if j >= (n / 2) then
    puts a[(n / 2) - 1][:value].to_s
  else
    puts a[n / 2][:value].to_s
  end
end