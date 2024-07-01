n =gets.to_i
a = gets.split.map(&:to_i)
cnt = Hash.new(0)

a.each do |v|
  k = 0
  t = 1
  30.times do |i|
    k += t if v[i] == 0
    t *= 2
  end
  cnt[k] += 1
end
if cnt.length == 1
  if cnt[2**30-1] == n
    puts "Yes"
  else
    puts "No"
  end
elsif cnt.length == 2 && n % 3 == 0
  puts cnt[2**30-1]==n/3 ? "Yes" : "No"
elsif cnt.length == 3 && n % 3 == 0
  flg = true
  cnt.each do |k,v|
    flg = false if v != n/3
  end
  puts flg ? "Yes" : "No"
else 
  puts "No"
end
