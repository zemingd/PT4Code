command = gets.chomp.split("")
#p command
s = Array.new(10)
i = 0
command.each do |c|
  case c
  when '1' then
    s[i] = '1'
    i += 1
  when '0' then
    s[i] = '0'
    i += 1
  when 'B' then
    i -= 1 if i != 0
  end
end

i.times do |i|
  print s[i]
end

puts
