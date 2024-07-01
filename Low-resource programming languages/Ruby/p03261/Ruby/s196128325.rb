n=gets.to_i
s=*$<
puts s.uniq.size==n&&(n-1).times.all?{|i|s[i][-2]==s[i+1][0]}?:Yes: :No