n = gets.to_i

ymflag=0
myflag=0
mae = (n / 100).to_i
ushiro = (n % 100).to_i

year = [*(1..99)]
month = [*(1..12)]

if year.include?(mae) and month.include?(ushiro)
  ymflag = 1
end
if month.include?(mae) and year.include?(ushiro)
  myflag = 1
end

if ymflag==0 and myflag==0
  puts "NA"
elsif ymflag==1 
  if myflag==1
    puts "AMBIGUOUS"
  else
    puts "YYMM"
  end
else
  puts "MMYY"
end