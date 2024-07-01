 a, b, c = gets.split.map &:to_i;puts (a..b).count{|x| c % x == 0}
