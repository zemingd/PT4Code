r=gets.to_i
puts (if r < 1200
  'ABC'
elsif r < 2800
  'ARC'
else
  'AGC'
end)