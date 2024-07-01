n = gets.to_i
s = gets.chomp

(0...n).each do |i|
  if s[i].nil?
    puts s.size
    exit
  end

  if s[i] == s[i + 1]
    s.slice!(i)
    redo
  end
end