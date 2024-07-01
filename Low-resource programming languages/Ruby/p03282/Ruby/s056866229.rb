S = gets.chomp.split('')
s_uniq  = S.uniq
k = gets.to_i

if s_uniq.size == 1 or k == 1
  puts S[0]
  exit
end  

if s_uniq[0] == "1"
  unless S[k-1].nil?
    if S[0..k-1].uniq == ["1"]
      puts s_uniq[0]
    else
      puts s_uniq[1]
    end
  else
    puts s_uniq[1]
  end
else
  puts s_uniq[0]
end