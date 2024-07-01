s = gets.chomp
puts (s==s.reverse&&(s[0..((s.size-1)/2-1)]==s[0..((s.size-1)/2-1)].reverse)&&(s[((s.size+3)/2-1)..(s.size-1)]==s[((s.size+3)/2-1)..(s.size-1)].reverse)) ? 'Yes' : 'No'