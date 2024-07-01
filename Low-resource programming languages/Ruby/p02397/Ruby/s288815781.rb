loop do
    arr = gets.chomp.split.map(&:to_i)
    arr.all?{|x| x==0} ? break : puts(arr.sort.join(' '))
end
