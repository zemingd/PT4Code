n=gets.to_i
h=gets.split.map(&:to_i)
cnt=1
(2..n).each do |i|
  if h[0..i-1].max <= h[i-1]
    cnt +=1
  end
end
puts cnt