N, M = gets.split.map(&:to_i)
arr = N.times.map { gets.split.map(&:to_i) }
sum = 0
1.upto(M) do |day|
  max_i = arr.index(arr.select{|(a,b)| a<=day}&.max_by{|e| e[1]} || nil)
  if max_i
    sum += arr[max_i][1]
    arr.delete_at(max_i)
  end
end

p sum