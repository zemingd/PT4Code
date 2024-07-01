class Dice
  def initialize(t,s,e,w,n,b)
    @all = [ [t,s,e,w,n,b],[t,e,n,s,w,b],[t,n,w,e,s,b],[t,w,s,n,e,b],
             [s,t,w,e,b,n],[s,w,b,t,e,n],[s,b,e,w,t,n],[s,e,t,b,w,n],
             [e,t,s,n,b,w],[e,s,b,t,n,w],[e,b,n,s,t,w],[e,n,t,b,s,w],
             [w,t,n,s,b,e],[w,n,b,t,s,e],[w,b,s,n,t,e],[w,s,t,b,n,e],
             [n,t,e,w,b,s],[n,e,b,t,w,s],[n,b,w,e,t,s],[n,w,t,b,e,s],
             [b,s,w,e,n,t],[b,w,n,s,e,t],[b,n,e,w,s,t],[b,e,s,n,w,t] ]
    @val = @all.map{|v| v.join(",")}.min
  end
  def val
    return @val
  end
end

n = gets.chomp.to_i
d = []
flag = false
for i in 1..n do
  t,s,e,w,n,b = gets.chomp.split(" ").map{|x| x.to_i}
  d[i-1] = Dice.new(t,s,e,w,n,b)
  for j in 1..i-1 do
    if d[i-1].val == d[j-1].val
      flag = true
      break
    end
  end
  if flag
    break
  end
end
if flag
  printf("No\n")
else
  printf("Yes\n")
end
