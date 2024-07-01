s = gets.chomp.to_s.reverse
t = ['dream','dreamer','erase','eraser']
t_r = t.map{|t| t.reverse}

counter = 0
t_r.each do |t|
  break if counter == 10
  counter += 1
  if s[0..t.length-1] == t
    s = s[t.length..-1]
    counter = 0
    break if s.empty?
  end
end

puts s.empty? ? "YES" : "NO"
