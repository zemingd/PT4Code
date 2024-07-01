N=gets.chomp.to_s

a=N[0..2].split("").uniq
b=N[1..3].split("").uniq

if a.length == 1 || b.length == 1
  puts "Yes"
else
  puts "No"
end
