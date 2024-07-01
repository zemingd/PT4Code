N = gets.to_i
a = [nil]
N.times{ a.push( gets.to_i ) }

pos = 1
cnt = 1
loop do
  
  break if a[pos] == 2
  
  if a[pos].nil?
    cnt = -1
    break
  end

  tmp = a[pos]
  a[pos] = nil
  pos = tmp
  
  cnt += 1
  
  break if a[pos] == 2
  
end

puts cnt