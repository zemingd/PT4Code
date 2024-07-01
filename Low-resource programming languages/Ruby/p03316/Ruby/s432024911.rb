s=gets
n=s.to_i
s=((s.chomp.chars).map &:to_i).inject(:+)
if n%s==0
print("Yes\n")
else
print("No\n")
end