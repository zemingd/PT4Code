n = gets.chomp.split('').map(&:to_i)
s = 0
n.each do |n|
  s += n
end
puts n.join.to_i%s==0 ? 'Yes' : 'No'