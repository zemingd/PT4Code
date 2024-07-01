x = gets.chomp.to_i
bunk = 100
cnt = 0
while true
  cnt += 1
  bunk *= 1.01
  bunk = bunk.to_i
  if bunk >= x
    puts cnt
    exit
  end
end