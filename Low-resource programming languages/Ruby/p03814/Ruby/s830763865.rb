S = gets.chomp.chars
s = nil
e = nil
S.each.with_index do |ch, i|
  s = i if s.nil? && ch == 'A'
  e = i if ch == 'Z'
end
puts(e - s + 1)
