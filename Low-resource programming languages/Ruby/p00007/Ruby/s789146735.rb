puts (1..gets.to_i).inject(100){|x| (x * 1.05).ceil} * 1000