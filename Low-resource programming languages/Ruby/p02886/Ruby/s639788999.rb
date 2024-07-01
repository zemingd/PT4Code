def calc(arr)
  if arr.length == 2
    arr.first * arr.last
  else 
    arr[1..-1].map { |e| e * arr.first }.sum + calc(arr[1..-1])
  end
end

n = gets.to_i
arr = gets.split(' ').map(&:to_i)

p calc(arr)
