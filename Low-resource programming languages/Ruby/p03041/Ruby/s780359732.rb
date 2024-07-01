/n,a,b=gets.split.map(&:to_i)/
/.sort/
/S = gets.chomp.chars/
n,k=gets.split.map(&:to_i)
s=gets.to_s
if(s[k-1]=='A')
  s[k-1]='a'
elsif(s[k-1]=='B')
  s[k-1]='b'
else
  s[k-1]='c'
end
puts s
  