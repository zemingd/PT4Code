loop do
  line = gets.chomp.split
  a = line[0].to_i
  op = line[1]
  b = line[2].to_i

  case op
  when '+'
    puts a+b
  when '-'
    puts a-b
  when '*'
    puts a*b
  when '/'
    puts a/b
  when '?'
    break
  end
end