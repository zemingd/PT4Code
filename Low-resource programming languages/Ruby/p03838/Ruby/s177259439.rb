n, m = gets.split.map(&:to_i)
sol = 10**12
if n <= m then
    #puts "a"
    sol = [sol, m-n].min
end
if -n <= m then
    #puts "b"
    sol = [sol, 1 + m-(-n)].min
end
if -n <= -m then
    #puts "c"
    sol = [sol, 2 + -m-(-n)].min
end
if n * m < 0 && n <= -m then
    #puts "d"
    sol = [sol, 1 + -m - n].min
end
if n == 0 then
    #puts "f"
    sol = [sol, m.abs + ((m<0)?1:0)].min
end
if m == 0 then
    #puts "g"
    sol = [sol, n.abs + ((n>0)?1:0)].min
end
puts sol