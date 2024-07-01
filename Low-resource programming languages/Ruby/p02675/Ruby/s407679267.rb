N = gets.to_i

puts case N%10
     when 2, 4, 5, 7, 9; 'hon'
     when 0, 1, 6, 8; 'pon'
     when 3; 'bon'
end