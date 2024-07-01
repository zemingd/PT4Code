s = gets.strip.to_s
k = gets.to_i
if s[0]=="1"
  su = s.split("").to_a
  if su.all?("1")
    puts 1
  else
    num = su.index{|x| x!="1"}
    if k <= num
      puts 1
    else
      puts su[num]
    end
  end
else
  puts s[0]
end