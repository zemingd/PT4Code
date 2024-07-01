gets
puts gets.split.map(&:to_i).each_with_index.map{|it, i| [it, i]}.sort_by{|it| it[0]}.map{|it| it[1] + 1}.join(' ')
