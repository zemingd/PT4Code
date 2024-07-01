n = gets.to_i
s = gets.split(" ")

s = s.group_by(&:itself).map{ |key, value| [key, value.count] }.to_h

cnt = s.values
if cnt.length == 3
  puts "Three"
else
  puts "Four"
end
