N = gets.to_i
if N < 105 then
  puts 0
  exit
elsif N==105 then
  puts 1
  exit
else
  ans = 0
  (1..N).each do |i|
    cnt = 0
    i.times do |j|
      next if j%2==1
      if i%(j+1)==0 then
        #puts "  #{i}は#{j+1}で割り切れる"
        cnt += 1
      end
    end
    if cnt==8 then
      ans += 1
      #puts "#{i} の約数は#{cnt}あった"
    else
      #puts "#{i} の約数は#{cnt}あった"
    end
  end
end
p ans