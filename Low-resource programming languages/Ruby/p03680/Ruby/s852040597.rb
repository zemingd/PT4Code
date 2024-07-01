N = gets.to_i
a = [nil]
N.times{ a.push( gets.to_i ) }

pos = 1
cnt = 1

1.upto N do |i|
  
  pos = a[pos]
  cnt = i
  break if pos == 2
  cnt = -1
end

puts cnt