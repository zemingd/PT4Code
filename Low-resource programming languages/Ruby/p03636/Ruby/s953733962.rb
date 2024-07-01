s = gets.chomp.to_s
s = "#{s[0]}#{s[1..-2].size}#{s[-1]}"
puts s
