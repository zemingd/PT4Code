
x1,x2,x3,x4,x5=gets.chomp.split(" ").map(&:to_i);

print x1==0 ? 1 :
      x2==0 ? 2 :
      x3==0 ? 3 :
      x4==0 ? 4 :
      x5==0 ? 5 : ""
      