out = ''
gets.chomp.chars.each do |c|
  case c
  when '0'
    out += '0'
  when '1'
    out += '0'
  when 'B'
    out = out.chars[0..-2].join
  end
end
puts out