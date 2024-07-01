def pow5(a)
  a*a*a*a*a
end

x=gets.to_i;
soi=Array.new()
soi.push(1)
i=2
while i*i<=x do
  if x%i==0 then
    soi.push(i)
    soi.push(x/i)
  end
  i+=1
end
soi.push(x)

a=0
b=0

for d in soi do
  a=d
  b=0

  40.times{
    if pow5(a)-pow5(b)==x then
      puts ("#{a} #{b}");
      return
    end
    a+=1
    b+=1
  }

  a=d
  b=0

  40.times{
    if pow5(a)-pow5(b)==x then
      puts ("#{a} #{b}");
      return
    end
    a-=1
    b-=1
  }
end
