puts gets.to_i.times.map { gets.chomp }.group_by(&:itself).values.select { |a| a.count.odd? }.count
