commands = STDIN.read

buf = []

commands.each_byte do |b|
  case b
  when '0'
    buf.push('0')
    break
  when '1'
    buf.push('1')
  when 'B'
    buf.pop
  end
end

puts buf.join('')
