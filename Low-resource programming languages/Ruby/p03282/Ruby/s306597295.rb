s = gets.chomp.chars
k = gets.to_i

n = nil
s.each.with_index(1) do |c,i|
  if c != "1"
    n = i
    break
  end
end

if n && n <= k
  puts s[n-1]
else
  puts "1"
end
