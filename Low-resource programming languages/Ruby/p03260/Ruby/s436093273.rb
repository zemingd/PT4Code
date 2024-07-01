a,b=gets.chomp.split(" ").map(&:to_i);

t = a*b

r=[1,2,3].find{|v| (t * v)%2 == 1}

print(r ? "Yes":"No")
