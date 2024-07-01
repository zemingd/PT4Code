# スペース区切りの整数の入力
a,b=gets.chomp.split(" ").map(&:to_s);
c = "#{a}#{b}"
c = c.to_i
for i in 1..c/2 do
  if c==i*i then
    print "Yes"
    exit
  end
end
print "No"