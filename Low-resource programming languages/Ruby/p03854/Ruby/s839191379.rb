s = gets.chomp.to_s.reverse
t = ['dream','dreamer','erase','eraser']
t_r = t.map{|t| t.reverse}

400000.times do
  t_r.each do |t|
    if s[0..t.length-1] == t
      s = s[t.length..-1]
      break if s.empty?
    end
  end
end

puts s.empty? ? "YES" : "NO"
