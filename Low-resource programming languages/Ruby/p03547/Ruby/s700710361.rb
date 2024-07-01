A, B = gets.chomp.split(" ")

case A <=> B
when 1
  puts '>'
when -1
  puts '<'
else
  puts '='
end
