io = STDIN
n=io.gets.to_i
pa=io.gets.split.map(&:to_i)
cnt=0
pa.each_cons(3) do |a,b,c|
  if a>b && b>c ||
     c>b && b>a
     cnt+=1
  end
end
puts cnt
