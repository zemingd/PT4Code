n, m = gets.split.map(&:to_i)
xx = gets.split.map(&:to_i).sort
if n >= m
    puts 0
else
    dif = xx.each_cons(2).map{ |x1, x2| x2 - x1 }.sort
    puts dif[0,m-n].reduce(:+)
end
    