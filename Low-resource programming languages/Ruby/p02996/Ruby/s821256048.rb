# 整数の入力
n = gets.to_i

works = []

# スペース区切りの整数の入力
for num in 1..n
    b,c=gets.chomp.split(" ").map(&:to_i);
    works.push([b,c])
end

works.sort_by! {|x| [x[1],x[0]]}

time = 0
time_over = false
for work in works
    time += work[0]
    if time > work[1]
        time_over = true
        print("No")
        exit
    end
end
print("Yes")
