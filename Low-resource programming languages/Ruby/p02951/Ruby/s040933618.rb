a,b,c=gets.chomp.split.map(&:to_i)
if p c-(a-b)<0
  puts "0"
else
  puts p c-(a-b)
end