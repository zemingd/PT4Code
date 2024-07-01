n = gets.to_i
arr = gets.split.map(&:to_i).sort

cnt = 0

loop do
    if arr.size <= 1
      cnt += 1 if arr.size == 1
      break
    end
    #p arr
    cnt += 1 if arr[0] != arr[1]
    target = arr[0]
    arr.delete_if do |x|
        x % target == 0
    end
end

puts cnt