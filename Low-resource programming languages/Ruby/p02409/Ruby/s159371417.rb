info = Array.new(4){Array.new(3){Array.new(10, 0)}}

n = gets.chomp.to_i
for i in 1..n do
  b,f,r,v = gets.chomp.split(" ").map{|x| x.to_i}
  info[b-1][f-1][r-1] += v
end

for b in 1..4 do
  if b!=1
    printf("%s\n","#"*20)
  end
  for f in 1..3 do
    for r in 1..10 do
      printf(" %d",info[b-1][f-1][r-1])
    end
    printf("\n")
  end
end
