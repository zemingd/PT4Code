n =gets.to_i
a = gets.split.map(&:to_i).sort
cnt = Hash.new(0)

a.each do |v|
  cnt[v] += 1
end

if cnt.length == 1
  if cnt[0] == n
    puts "Yes"
  else
    puts "No"
  end
elsif cnt.length == 2 && n % 3 == 0
  puts cnt[0]==n/3 ? "Yes" : "No"
elsif cnt.length == 3 && n % 3 == 0
  flg = true
  cnt.each do |k,v|
    flg = false if v != n/3
  end
  k = cnt.keys
  30.times do |i|
    t = 0
    3.times do |j|
      t += k[j][i]
    end
    flg = false if !(t==2 || t==0)
  end
  puts flg ? "Yes" : "No"
else 
  puts "No"
end
