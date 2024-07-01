n,k=gets.chomp.split(" ").map(&:to_i)
s=gets.chomp.split("")

grouped=[]
s.each_with_index{|si,i|
  if i==0
    grouped << 1
  else
    if s[i-1] == si
      grouped[grouped.count-1]+=1
    else
      grouped << 1
    end
  end
}

t=s[0] == "0" ? 0:1
r=0
if grouped.select{|v|v%2==t}.count <k
  print(n)
else
grouped.each_with_index{|_,i|
  len=grouped.slice(i,2*k+t).inject(&:+)
  r=len if len >= r
}

print(r)
end