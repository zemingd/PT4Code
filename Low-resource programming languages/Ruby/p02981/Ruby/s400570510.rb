n,a,b = gets.split(" ").map(&:to_i)

case (n*a) <=> b
when 0 then
    puts b
when 1 then
    puts b
when -1 then
    puts n*a
end