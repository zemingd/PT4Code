io = STDIN
x=io.gets.to_i
bb=Math.sqrt(x).to_i

ans=0
(1..bb).each do |b|
  (2..([x,2].max)).each do |p|
    break if b**p > x
    ans=b**p if ans < b**p
  end
end
puts ans
