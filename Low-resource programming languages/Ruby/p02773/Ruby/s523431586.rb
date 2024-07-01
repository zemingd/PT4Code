n=gets.to_i
s=[]
(0..n-1).each do |x|
    s[x]=gets.chomp.to_s
end
max=0
s2=Array.new(s.sort!)
s2.uniq!
s3=Array.new(s2.size(),0)
z=0
(0..n-1).each do |y|
    if s2[z]==s[y]&& z<s2.size()
        s3[z]+=1
    else
        z+=1
        if s2[z]==s[y] && z<s2.size()
            s3[z]+=1
        end
    end
end
max=s3.max
(0..s2.size()-1).each do |i|
    if s3[i]==max
        puts s2[i]
    end
end
