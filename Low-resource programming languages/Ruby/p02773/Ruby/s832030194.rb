n=gets.to_i
s={}
m=0
for i in 0...n do
    key=gets.chomp
    if s[key]==nil
        s[key]=1
    else
        s[key]+=1
        m=(s[key]>m)?s[key]:m
    end
end
s.delete_if {|k,v|v<m}
s1=s.sort{|a,b| a[0]<=>b[0]}
s1.each do |t|
    puts t[0]
end
