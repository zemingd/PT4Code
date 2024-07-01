
N,K=gets.split.map(&:to_i)
S=gets.chomp

region=Array.new
old=""
temp=0
sum=0
max=0

S.each_char do |char|
    if old==char
        temp+=1
    elsif char=="1"
        sum+=temp
        region.push(temp)
        old=char
        temp=1
    elsif char=="0"
        sum+=temp
        max=sum if sum>max
        region.push(temp)
        sum-=region.shift if region.length>2*K-1
        sum-=region.shift if region.length>2*K-1
        old=char
        temp=1
    end
end

sum+=temp
max=sum if sum>max

puts max
