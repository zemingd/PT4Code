n,m=gets.split.map(&:to_i)
xs=gets.split.map(&:to_i)

if n >= m
    puts 0
    exit
end

xs.sort!
xs=xs.each_cons(2).map {|x1, x2| (x2-x1).abs }
xs.sort!
puts xs.first(m-n).inject(:+)