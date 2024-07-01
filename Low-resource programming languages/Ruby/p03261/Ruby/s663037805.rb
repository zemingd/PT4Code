n=gets.to_i
s=[*$<]
puts s.uniq.size<n||s.each_cons(2).any?{|a,b|a.chars[-2]!=b.chars[0]}?:No: :Yes