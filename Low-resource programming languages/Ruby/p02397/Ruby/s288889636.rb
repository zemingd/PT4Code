while (l = gets.chomp.split.map(&:to_i)) != [0, 0]
    puts l.sort.map(&:to_s).join(' ')
end
