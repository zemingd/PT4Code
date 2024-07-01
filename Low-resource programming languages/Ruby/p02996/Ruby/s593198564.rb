N = gets.to_i
array = []
N.times{ array.push(gets.split(' ').map(&:to_i)) }
array.sort!{|a, b| a[1] <=> b[1] }
sum = 0
ret = true
array.each{ |x,y| sum += x; ret = false if sum > y }
if ret
  puts "Yes"
else
  puts "No"
end