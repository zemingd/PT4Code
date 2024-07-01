s = gets
s.length.times{s.sub!(/[0-1]?B/, '')}
puts s