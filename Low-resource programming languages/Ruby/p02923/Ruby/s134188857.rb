# input
N = gets.to_i
H = gets.split.map{|x| x.to_i}

# compute
moved_nums = {"0"=>0}
cnt = 0
for i in 0...N-1
    if H[i] >= H[i+1] 
        cnt += 1
        if i == N - 2
            index = i - cnt + 1
            moved_nums["#{index+1}"] =  cnt 
        end 
    else 
        if cnt > 0
            index = i - cnt
            moved_nums["#{index+1}"] =  cnt
            cnt = 0
        end
    end
end 

# output
puts moved_nums.max{|a, b| a[1] <=> b[1]}[1].to_i

