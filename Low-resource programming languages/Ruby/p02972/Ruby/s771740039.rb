N = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)
# p arr
ans = Array.new(N)


(N-1).downto(0) do |n|
    box_num = n+1
    multi_arr = box_num.step(N,box_num)
    # p multi_arr
    # p "multi"
    sum = 0
    multi_arr.reverse_each do |i|
        # p arr[i-1]
        if not ans[i-1].nil?
            sum += ans[i-1]
        else
            ans[i-1] = (sum % 2) ^ arr[i-1]
        end
    end
end
# p ans
nums = []
b_n = 1
m = 0
ans.each do |n|
    if n == 1
        nums << b_n
        m+=1
    end
    b_n+=1
end
puts m
if not m == 0
    puts nums.join(" ")
end
