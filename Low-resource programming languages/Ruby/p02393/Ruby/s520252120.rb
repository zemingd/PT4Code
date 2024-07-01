arr= Array.new(3)
arr = STDIN.gets.split.map(&:to_i)
arr.sort!
puts arr[0] arr[1] arr[2]