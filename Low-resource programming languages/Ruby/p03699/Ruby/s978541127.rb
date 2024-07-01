N = gets.to_i
s = []
for i in 0..N-1
    s[i] = gets.to_i 
end

a = []
i = 0
[0, 1].repeated_permutation(N) do |bits|
    a[i] = bits 
    i += 1
end

score = []

for j in 0..(2 ** (N))-1

    score[j] = 0

    for k in 0..N-1

        if a[j][k] == 1

            score[j] += s[k]

        end

    end

end

if score.select{|x| x % 10 != 0}.size == 0
    
    puts 0

else

    puts score.select{|x| x % 10 != 0}.max

end

