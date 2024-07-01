N, M = gets.split.map(&:to_i)
a = M.times.map { gets.to_i }.sort
fib_array = [0] + [1] + Array.new
arr = [true] + [true] + Array.new(N-1, true)
answered = false

(1..(a.size-1)).each do |i|
  if a[i] - a[i-1] == 1
    puts 0
    answered = true
    break
  end
end

unless answered
  (2..N+1).each do |i|
    fib_array[N] = fib_array[N-2] + fib_array[N-1]
  end
  a.each do |num|
    arr[num+1] = false
    arr[num+2] = false
    arr[num+3] = false
  end
end

puts fib_array[arr.count(true)].modulo(1000000007)