s=gets.chomp

count=0
n=s.length
(n-1).times do |i|
    if s[i]==s[i+1]
        count+=1
        if s[i+1]=="0"
            s[i+1]="1"
        else
            s[i+1]="0"
        end
    end
end
puts count
