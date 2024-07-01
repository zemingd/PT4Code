N,K = gets.chomp.split(" ").map(&:to_i)
S = gets.chomp.split("").map(&:to_i)

count_array = []
count = 0
prev_num = S[0]
if S[0] == 1
    plus_flag = true
else
    plus_flag = false
end

S.each_with_index do |num,i|
    if prev_num != num
        count = plus_flag ? count : -count
        count_array << count
        count = 1
        plus_flag = plus_flag ? false : true
    else
        count += 1
        if i == (S.length-1)
            count = plus_flag ? count : -count
            count_array << count
        end
    end
    prev_num = num
end

minus_indexs = count_array.each_with_index.each_with_object([]){|(e, i), acc| acc << i if e < 0}
test_permutations = []
(minus_indexs.length-K+1).times do |i|
    test_permutations << minus_indexs.slice(i,K)
end
max = 0
if test_permutations.length == 0
    p count_array[0]
else
    test_permutations.each_with_index do |permutaion_num, i|
        count = 0
        if (permutaion_num[0] != 0)&&(permutaion_num.last != count_array.length-1)
            count_array.slice(permutaion_num[0]-1..permutaion_num.last+2).each_with_index do |num,i|
                count += num.abs
            end
            # puts count
        elsif (permutaion_num[0] != 0)&&(permutaion_num.last == count_array.length-1)
            count_array.slice(permutaion_num[0]-1,permutaion_num.last+1).each_with_index do |num,i|
                count += num.abs
            end
        elsif (permutaion_num[0]== 0)&&(permutaion_num.last != count_array.length-1)
            count_array.slice(permutaion_num[0],permutaion_num.last+2).each_with_index do |num,i|
                count += num.abs
            end
        else
            count_array.slice(permutaion_num[0],permutaion_num.last).each_with_index do |num,i|
                count += num.abs
            end
        end
        if count > max
            max = count
        end
    end
    p max
end
