length = gets.to_i
result_array = gets.chomp.split(" ").map(&:to_i)

#array_length 個の要素を含む 0-オリジンの配列 array_value
def bubbleSort(array_value, array_length)
    flag = 1 #逆の隣接要素が存在する
    exchange_ct = 0
  
    while flag == 1 do
        
        flag = 0
        
        for j in 1..(array_length - 1) do
            
            temp_index = array_length - j
            
            if array_value[temp_index] < array_value[temp_index - 1]
                
                array_value[temp_index - 1], array_value[temp_index] = array_value[temp_index], array_value[temp_index - 1]  
                
                exchange_ct += 1
                
                flag = 1
            end
        end
    end
    
    exchange_ct
end

exchange_ct = bubbleSort(result_array, length)

puts result_array.join(" ")
puts exchange_ct

