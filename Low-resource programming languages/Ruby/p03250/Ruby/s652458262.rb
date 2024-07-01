a,b,c = gets.split.map(&:to_i)

D = [a,b,c].sort

if (D[0]+D[1]) >= 10
  puts (D[2] + 1).to_s + (D[0]+D[1]-10).to_s
else
  puts (D[2].to_s) + (D[0]+D[1]).to_s
end
