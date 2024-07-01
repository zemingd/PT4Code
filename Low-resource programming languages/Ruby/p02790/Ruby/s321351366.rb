inp = gets.split.map(&:to_i)
if inp[0] >= inp[1]
  puts inp[1].to_s * inp[0]
else
  puts inp[0].to_s * inp[1]
end