n, _ = gets.split.map(&:to_i)
s = [].tap { |array| n.times { array << gets.chomp } }
puts s.sort.join