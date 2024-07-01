a,b,c=gets.chomp.split(" ").map(&:to_i);
d=a-b
e=c-d
if(e<0)
  e=0
end
puts e