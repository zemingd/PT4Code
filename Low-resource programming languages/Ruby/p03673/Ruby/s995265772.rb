n=gets.to_i
as=gets.split.map(&:to_i)
b=[0]*n
if n.odd?
  b[n/2]=as[0]
  i=1
  ((n-1)/2).downto(1) do |j|
    b[-j]=as[i]
    b[j-1]=as[i+1]
    i+=2
  end
else
  i=0
  (n/2).downto(1) do |j|
    b[-j]=as[i]
    b[j-1]=as[i+1]
    i+=2
  end
end
puts b.join(" ")
