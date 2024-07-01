require 'scanf'
loop do
  input = scanf("%d %d")
  break if input[0]==0 && input[1]==0
  ary = input.sort
  puts "#{ary[0]} #{ary[1]}"
end