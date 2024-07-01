a,v=gets.split.map(&:to_i)
b,w=gets.split.map(&:to_i)
t=gets.to_i


x=b-a
x=x.abs

at=v*t
bt=w*t
result=(at-bt).abs


if result >x
    puts "YES"
else
    puts "NO"
end