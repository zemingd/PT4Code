k = gets.split(' ')[1].to_i
puts gets.split(' ').group_by(&:itself).to_a.map(&:last).map(&:size).sort.reverse.drop(k).inject(0, :+)
