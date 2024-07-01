n = gets.chomp.to_i
a,b = gets.chomp.split(" ").map(&:to_i)

if a%n==0 || b%n==0
  puts "OK"
  return
end

if b/n == a/n
  puts "NG"
else
  puts "OK"
end