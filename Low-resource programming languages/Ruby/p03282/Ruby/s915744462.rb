s = gets.strip.to_s
k = gets.to_i
if s[0]==1
  if k==1
    puts 1
  else
    if s[0..k-1].all?("1")
      puts 1
    else
      puts s[1]
    end
  end
else
  puts s[0]
end