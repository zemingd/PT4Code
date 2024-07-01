S = gets.chomp
s = ""
S.each_char do |c|
  case c
  when '0' then s << c
  when '1' then s << c
  when 'B' then s.chop!
  end
end
puts s