i , max = gets.split.map(&:to_i)
array = gets.split.map(&:to_i).sort

cnt = 0

(0..i-1).each do |n|
    if max < array[n] 
       break
    end
    if n == array.length-1 && max > array[n]
        break
    end
     max -= array[n]
     cnt += 1
end
puts cnt

