n = gets.to_i
arr = Array.new(n, 0)
gets.chomp.split.map(&:to_i).each{|x| arr[x - 1] += 1}
puts arr