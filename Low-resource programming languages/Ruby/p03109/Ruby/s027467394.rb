S = gets.split("/").map(&:to_i)
P = Time.new(S[0],S[1],S[2])
H = Time.new(2019,4,30)

if P <= H
  puts "Heisei"
else
  puts "TBD"
end
