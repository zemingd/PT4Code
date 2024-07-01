num = gets.split(" ")
puts num.include?("+") ? num.map(&:to_i).inject(&:+) : num.map(&:to_i).inject(&:-)