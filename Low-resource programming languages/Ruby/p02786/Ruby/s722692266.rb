h = gets.chomp.to_i

log = Math.log2(h).to_i

sum = 0

while
  sum += 2**log
  if log == 0
    puts sum
    exit
  end
  log -= 1
end
