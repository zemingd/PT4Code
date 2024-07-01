ary = Array.new
3.times { ary << $stdin.gets.chomp }
puts ary[0][0] + ary[1][1] + ary[2][2]