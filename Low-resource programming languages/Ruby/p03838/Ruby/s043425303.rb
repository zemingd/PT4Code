n, m = gets.split.map(&:to_i)
sol = 10**12
if n <= m then
    sol = [sol, m-n].min
end
if -n <= m then
    sol = [sol, 1 + m-(-n)].min
end
sol = [sol, (n-m).abs + (1 if n*m<0)].min
puts sol