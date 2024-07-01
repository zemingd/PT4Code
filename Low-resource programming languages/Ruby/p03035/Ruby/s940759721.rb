a, b = gets.split.map(&:to_i)
puts case
when a <= 5 then 0
when a <= 12 then b / 2
else b
end
