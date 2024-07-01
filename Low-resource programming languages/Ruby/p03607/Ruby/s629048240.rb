n=gets.to_i
s=Hash.new
count=0

n.times.each do
    v=gets.to_i
    if s[v]==0 || s[v].nil?
        s[v]=1
        count+=1
    else
    s[v]=0
    count-=1
    end
end
p count