a,b,c,d = gets.chomp.split.map(&:to_i)

aoki = (b / c).to_f
takahashi = (d / a).to_f

if takahashi > aoki
  puts "Yes"
elsif takahashi == aoki
  puts "Yes"
else
  puts "No"
end