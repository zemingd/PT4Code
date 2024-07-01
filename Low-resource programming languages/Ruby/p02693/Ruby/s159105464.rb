K = gets.to_i
A,B=gets.chomp.split(" ").map(&:to_i);
c= 0
cc = 1
while true
  c = cc* K
  if c<A
    cc+=1
  elsif c>=A && c<=B
    puts("OK");
    break
  else c>B
    puts("NG")
    break
  end
end