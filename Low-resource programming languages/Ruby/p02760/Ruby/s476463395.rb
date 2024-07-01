Ass = Array.new(3) { gets.split.map(&:to_i) }
N = gets.to_i
bs = Array.new(N) { gets.to_i }

ans_arr = Array.new(3) { Array.new(3){'no'} }

cond = false

bs.each do |bingo|
    Ass.each_with_index do |arr, arr_i|
        arr.each_with_index do |num, num_i|
        ans_arr[arr_i][num_i] = 'yes' if num == bingo
        end
    end
end

ans_arr.each do |arr|
    cond = true if arr.uniq.count == 1 && arr[0] == 'yes'
end

3.times do |index|
    array = [ans_arr[0][index], ans_arr[1][index], ans_arr[2][index]]
    cond = true if array.uniq.count == 1 && array[0] == 'yes'
    
end

array = [ans_arr[0][0], ans_arr[1][1], ans_arr[2][2]]
cond = true if array.uniq.count == 1 && array[0] == 'yes'
array = [ans_arr[0][2], ans_arr[1][1], ans_arr[2][0]]
cond = true if array.uniq.count == 1 && array[0] == 'yes'

puts cond ? 'Yes' : 'No'
