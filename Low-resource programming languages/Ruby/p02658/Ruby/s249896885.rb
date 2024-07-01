n = gets.to_i
a = gets.split.map(&:to_i)
ans = 1
a.each do |i|
  ans*=i
  if ans >1000000000000000000
    ans = -1
    break
  end
  
end
puts ans