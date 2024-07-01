a,v=gets.split.map(&:to_i)
b,w=gets.split.map(&:to_i)
t=gets.to_i


v=(b-a).abs
at=v*t
bt=w*t
result=at-bt


if result >= v
    puts "YES"
else
    puts "NO"
end
