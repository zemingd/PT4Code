s=gets.chomp
10.times{s.gsub!(/[01]B|^B/, '')}
puts s
