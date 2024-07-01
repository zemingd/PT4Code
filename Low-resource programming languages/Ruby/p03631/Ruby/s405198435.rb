N = gets.chomp
puts (if N == N.reverse
  'Yes'
else
  'No'
end)
