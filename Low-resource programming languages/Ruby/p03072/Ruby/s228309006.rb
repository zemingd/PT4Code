io = STDIN
n=io.gets.to_i
h=io.gets.split.map(&:to_i)
max=0
cnt=0
h.each do |i|
  cnt+=1 if max<=i
  max=[max,i].max
end
puts cnt
