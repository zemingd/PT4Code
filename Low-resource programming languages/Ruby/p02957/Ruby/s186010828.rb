puts (s=gets.split.map(&:to_i).inject(:+)).even? ? s/2:"IMPOSSIBLE"
