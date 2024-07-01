s = gets.to_i
ymf = 0
myf = 0
ato = (s % 100).to_i
mae = (s / 100).to_i

month = [*(1..12)]
year = [*(1..99)]

if year.include?(mae) and month.include?(ato)
  ymf = 1
end
if year.include?(ato) and month.include?(mae)
  myf = 1
end

if ymf == 1 
  if myf == 1
    puts "AMBIGUOUS"
  else
    puts "YYMM"
  end
elsif myf == 1
  puts "MMYY"
else
  puts "NA"
end

