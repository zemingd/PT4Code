y, m, d = gets.split("/").map(&:to_i)
p y < 2019 || (y == 2019 && m <= 4) ? 'Heisei' : 'TBD'