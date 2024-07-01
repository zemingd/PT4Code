S = []
ID = 0
K = 10
res = 0
5.times do |n|
    N = gets.chomp.to_i
    S.push(N)
    if N % 10 != 0 && K > N % 10 then
        K = N % 10
        ID = n
    end
end
5.times do |n|
    if ID == n || S[n]%10==0
        res += S[n] 
    else
        res += (S[n] / 10 + 1)*10
    end
    
end
puts res