lines = $stdin.read
array = lines.split("\n")
puts array[1].split(" ").map(&:to_i).map{|a| a-1}.inject(&:+)