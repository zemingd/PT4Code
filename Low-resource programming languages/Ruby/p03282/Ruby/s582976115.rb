s=gets.chomp.split("").map { |e| e.to_i  }
k=gets.chomp.to_i

leng = s.length
ans = 0

leng.times do |i|
  if s[i] == 1 && k > 0
    ans = 1
    k -= 1
  else
    puts ans = s[i]
    exit
  end
end

puts 1