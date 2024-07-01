n=gets.to_i
s=[]
(0..n-1).each do |x|
    s[x]=gets.chomp.to_s
end
max=0
s.sort!
s2=[]
s3=[]
z=0
(0..n-1).each do |y|
    if !s2.include?(s[y])
        s2.append(s[y])
        s3.append(1)
        z=s2.size()>1 ? z+1 : z
    elsif s[y]==s[y-1]
        s3[z]+=1
    else
        z+=1
    end
end
max=s3.max
(0..s2.size()-1).each do |i|
    if s3[i]==max
        puts s2[i]
    end
end
