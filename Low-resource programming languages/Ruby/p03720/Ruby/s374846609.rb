a, b= gets.chomp.split.map(&:to_i)
ans = Array.new(a,0)
b.times  do 
  m,n=gets.chomp.split.map(&:to_i)
  ans[m-1] ++
  ans[n-1] ++
end
puts ans