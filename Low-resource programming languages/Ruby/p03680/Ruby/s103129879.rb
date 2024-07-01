N = gets.to_i
a = [nil]
N.times{ a.push( gets.to_i ) }

pos = 1
cnt = -1

1.upto N do |i|
  
  pos = a[pos]
  if pos == 2
    cnt = i
    break
  end
end

p cnt