# input
s = gets.chomp

# define
bw = 0
wb = 0

# main
(s.length).times do |i|
  if s[i].to_i % 2 == i % 2 then
    bw += 1
  else
    wb += 1
  end
end
  
# output
puts [bw, wb].min
