a,b = gets.split.map(&:to_i)

ans = [a+b,a-b].max
ans = [ans,a*b].max
puts ans