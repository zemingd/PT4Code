n = gets
if [7,5,3].include?(n.strip.try(:to_i))
  p 'YES'
else
  p 'NO'
end