a,b,c,d = gets.chomp.split.map(&:to_i)

aoki = (c / b).ceil
takahashi = (a / d).ceil

if takahashi > aoki
  puts "Yes"
elsif takahashi == aoki
  puts "Yes"
else
  puts "No"
end