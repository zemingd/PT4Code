n=gets.to_i
puts n.to_s.split('').map(&:to_i).inject(:+) == 0 ? Yes : No
