n = gets.chomp.to_i
#k,x = gets.chomp.split().map(&:to_i)

s = gets.chomp.split(//)

ans = 0
count = 0
s.each do |c|
  if c == 'A'
    count = 1
  elsif c == 'B' && count == 1
    count = 2
  elsif c == 'C' && count == 2
    ans += 1
    count = 0
  else
    count = 0
  end
end

puts ans