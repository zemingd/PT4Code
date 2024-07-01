a,b=gets.split.map(&:to_i)
s=gets.chomp
if s[a]!="-"
  puts "No"
  exit
end
s.length.times do |i|
  if i!=a&&s[i]=="-"
    puts "No"
    exit
  end
end
puts "Yes"
