puts gets.to_i.times.map{|i|
    gets.chomp.chars.sort.join
}.sort.group_by{|it| it}.values.map{|it|
    s = it.size
    s * (s - 1) / 2
}.inject(:+)
