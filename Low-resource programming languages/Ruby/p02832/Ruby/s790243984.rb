io = STDIN
n=io.gets.to_i
a=io.gets.split.map(&:to_i)
ix = 1
cnt = 0
a.each do |i|
  ix+=1 if i==ix
end
if ix == 1
  puts -1
else
  puts n-(ix-1)
end
