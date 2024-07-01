n,m = gets.split.map(&:to_i)
x = gets.split.map(&:to_i).sort

if n >= m
    puts 0
else
    l = []
    (m-1).times{|i| l << x[i+1] - x[i]}
    l.sort_by!{|e| -e}

    puts x[m-1] - x[0] - (n == 1 ? 0 : l[0..n-2].inject(:+))
end