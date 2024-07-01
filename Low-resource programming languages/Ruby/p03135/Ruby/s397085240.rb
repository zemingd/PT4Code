gets
l = gets.split.map(&:to_i).sort
m = l.pop
puts l.inject(&:+) > m ? :Yes : :No
