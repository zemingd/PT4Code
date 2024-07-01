n = gets.chomp.to_i
arr = Array.new(4,0)
n.times do 
  result = gets.chomp
  arr[0] += 1 if result == 'AC'
  arr[1] += 1 if result == 'WA'
  arr[2] += 1 if result == 'TLE'
  arr[3] += 1 if result == 'RE'
end

arr.each_with_index do |a,idx|
  puts "AC × #{a}" if idx == 0
  puts "WA × #{a}" if idx == 1
  puts "TLE × #{a}" if idx == 2
  puts "RE × #{a}" if idx == 3
end