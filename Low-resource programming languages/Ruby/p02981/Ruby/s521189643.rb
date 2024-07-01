n,a,b = gets.strip.split(' ').map(&:to_i)

if n*a > b
p b
else
p n*a
end
