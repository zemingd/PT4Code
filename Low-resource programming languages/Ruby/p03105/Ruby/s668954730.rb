input = gets
matcher = input.match(/(\d+)\s*(\d+)\s*(\d+)/)
a, b, c = matcher[1].to_i, matcher[2].to_i, matcher[3].to_i

jingles = b / a

if jingles < c
  puts jingles
else
  puts c
end
