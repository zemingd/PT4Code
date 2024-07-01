S = gets.chomp
s = ""
(S.size).times do |i|
  if(s=="" && S[i]=="B")then
    #nothing
  elsif(S[i]=="0" || S[i]=="1")then
    s += S[i]
  elsif(s.size==1 && S[i]=="B")then
    s = ""
  elsif(S[i]=="B")then
    s = s[0..(s.size-2)]
  end
  #puts "#{i} : #{s}"
end

puts s
