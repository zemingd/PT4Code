n = gets.to_i
puts case n%10
when 2, 4, 5, 7, 9; "hon"
when 0, 1, 6, 8; "pon"
else "bon"
end