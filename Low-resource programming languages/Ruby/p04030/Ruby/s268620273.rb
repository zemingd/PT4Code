str = gets.chomp

buf = ""

str.each_char do |c|
  case c
  when '0'
    buf << c
  when '1'
    buf << c
  when 'B'
    buf.slice!(-1..-1)
  end
end

puts buf
