n = gets.to_i
a = Array.new(n)
n.times do |i|
    a[i] = gets.to_i-1
end
me = 0
n.times do |i|
  if me==1
    puts i
    exit
  end
  me = a[me]
end
puts -1