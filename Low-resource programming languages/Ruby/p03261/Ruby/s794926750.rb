x=[];n=gets.to_i;pre=gets.chomp;x<<pre
(n-1).times do
  str=gets.chomp
  (x.include?(str)||pre[-1]!=str[0])&&(puts :No;exit)
  x<<str;pre=str
end;puts :Yes
