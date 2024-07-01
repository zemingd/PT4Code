n = gets.chomp.to_i
case n%10
when 2, 4, 5, 7, 9
  appending = 'hon'
when 0, 1, 6, 8
  appending = 'pon'
when 3
  appending = 'bon'
end

puts appending