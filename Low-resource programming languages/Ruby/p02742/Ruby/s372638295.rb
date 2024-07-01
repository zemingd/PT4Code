line = gets.split(' ').map(&:to_f)
a=0
b=(line[0]/2).ceil
c=(line[1]/2).ceil
d=0
for i in 1..line[0].to_i
  if d==0 then
    a=a+c
    d=1
  elsif d==1 then
    a=a+c-1
    d=0
  end
end

puts a