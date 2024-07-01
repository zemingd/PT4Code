a,b = gets.chomp.split(" ").map(&:to_i);
s = gets.chomp
i = 0

a.times do
  if !(s[i]>="0" && s[i]<="9")
    puts "No" 
    exit
  end
  i += 1 
end

if !(s[i]=="-")
  puts "No" 
  exit
end
i += 1

b.times do
  if !(s[i]>="0" && s[i]<="9")
    puts "No" 
    exit
  end
  i += 1 
end

puts "Yes"