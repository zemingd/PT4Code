a,b,c = gets.split.map(&:to_i)
ans = a

10000.times do
  if ans%b != c
    ans += a
  else
    puts "YES"
    exit
  end
end

puts "NO"