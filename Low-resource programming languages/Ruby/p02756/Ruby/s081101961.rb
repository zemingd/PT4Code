s=gets.chomp
s0=""
s1=""
fl=false
q=gets.to_i
q.times do
  qu=gets.chomp
  if qu=="1"
    fl=!fl
  else
    if fl&&qu[2]=="1"||!fl&&qu[2]=="2"
      s1+=qu[4]
    else
      s0+=qu[4]
    end
  end
end
if !fl
  puts s0.reverse+s+s1
else
  puts s1.reverse+s.reverse+s0
end

