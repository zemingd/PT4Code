def b
  
end

N = gets.to_i
a = [nil]
N.times{ a.push( gets.to_i ) }

pos = 1
cnt = 1
loop do

  tmp = a[pos]
  a[pos] = nil
  pos = tmp
  
  cnt += 1
  
  if a[pos].nil?
    cnt = -1
    break
  end
  break if a[pos] == 2
  
  
  
end

puts cnt