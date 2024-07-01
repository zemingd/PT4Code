s = gets.strip
before = s[0..1].to_i
after = s[2..3].to_i
answer = []

if before > 0 && before <= 12 then
  answer.push('MMYY')
end
if after > 0 && after <= 12 then
  answer.push('YYMM')
end

if answer.length == 1 then
  puts answer[0]
elsif answer.length > 1 then
  puts 'AMBIGUOUS'
else
  puts 'NA'
end
