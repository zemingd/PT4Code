# https://atcoder.jp/contests/abc122/tasks/abc122_b



S = gets.chomp
ans=0
i=0
S.chars do |s|
    if s=='A'||s=='C'||s=='G'||s=='T'
        i+=1
    else
        ans=[ans,i].max
        i=0
    end
end
ans=[ans,i].max
puts ans
