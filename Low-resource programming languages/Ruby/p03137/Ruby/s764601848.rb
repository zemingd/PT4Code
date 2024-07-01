N,M = gets.split.map {|x| x.to_i}
X = gets.split.map {|x| x.to_i}

X.sort!

arr = []
X << 999999999
M.times { |i|
  arr << [X[i], X[i+1]-X[i]]
}
arr.sort! {|a,b| a[1] <=> b[1]}

sum = 0

if M > N
  (M-N).times { |i|
    sum += arr[i][1]
  }
end

puts sum
