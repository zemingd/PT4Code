i = gets.chomp.split(' ').map(&:to_i)
i.each_with_index{|item,t|
    if item == 0
        puts t+1
    end
}