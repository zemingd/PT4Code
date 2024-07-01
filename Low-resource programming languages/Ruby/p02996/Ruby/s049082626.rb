n = gets.to_i
ary = []
n.times do |i|
  ary[i] = gets.split.map(&:to_i)
end
ary = ary.sort_by{|x| x[1]}

time = 0
n.times do |i|
  time += ary[i][0]
  if time > ary[i][1]
    puts "No"
    exit
  end
end
puts "Yes"