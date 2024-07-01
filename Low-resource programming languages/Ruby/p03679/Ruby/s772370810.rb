n = gets.to_i
a = gets.split.map(&:to_i)
me = 0
n.times do |i|
  if  me==1
    puts i
    exit
  end
  me = a[me]
end
puts -1