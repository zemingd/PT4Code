def pa(s)
  n = s.length
  (0...n).each do |i|
    return false if s[i]!=s[n-i-1]
  end
  true
end
s = gets.chomp
n = s.length
puts ((pa(s) && pa(s[0...n/2]) && pa(s[n/2+1..-1])) ? :Yes : :No)