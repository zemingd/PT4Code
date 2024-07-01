s=""
gets.chop.chars.each do |c|
  s.chop! if c==?B
  s<<c unless c==?B
end
puts s