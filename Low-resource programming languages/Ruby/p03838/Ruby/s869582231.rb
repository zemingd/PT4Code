n, m = gets.split.map(&:to_i)
sol = 10**12
if n <= m then
    sol = [sol, m-n].min
end
if -n <= m then
    sol = [sol, 1 + m-(-n)].min
end
if -n <= -m then
    sol = [sol, 2 + -m-(-n)].min
end
#falta walk then swap
if n * m < 0 && n <= -m then
    sol = [sol, 1 + -m - n].min
end
if n == 0 then
    sol = [sol, m.abs + (1 if m<0)].min
end
if m == 0 then
    sol = [sol, n.abs + (1 if n>0)].min
end
puts sol