N =  $stdin.gets.chomp.to_i
puts $stdin.gets.chomp.split(" ").map(&:to_i).inject(:+) - N
