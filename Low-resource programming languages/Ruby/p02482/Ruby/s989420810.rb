a, b = gets().split.map {|s| s.to_i}
puts ["a < b","a > b","a == b"].find {|v| eval v}
#if(a<b)
#  puts"a < b"
#elsif(a==b)
#  puts"a == b"
#else
#  puts"a > b"
#end