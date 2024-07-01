N=gets.chomp.to_i
x=[]
y=[]
h=[]

N.times do |i|
  x[i],y[i],h[i]=gets.chomp.split(" ").map { |e| e.to_i }
end

def abs(n)
  return -n if n<0
  return n
end


for i in 0..100 do
  for j in 0..100 do
    cx = i
    cy = j
    hight = h[0] + abs(cx-x[0]) + abs(cy-y[0])
    for k in 0..N-1 do
      is_break = false
      if hight != h[k] + abs(cx-x[k]) + abs(cy-y[k])
        is_break = true
        break
      end
    end
    next if is_break
    printf("%d %d %d\n",cx,cy,hight)
    exit
  end
end
