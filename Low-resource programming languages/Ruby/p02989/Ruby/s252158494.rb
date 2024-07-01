n=gets.to_i
s=gets.split.map &:to_i
s.sort!
puts s[(n+1)/2]-s[(n-1)/2]==0? 0:s[(n+1)/2]-s[(n-1)/2]
