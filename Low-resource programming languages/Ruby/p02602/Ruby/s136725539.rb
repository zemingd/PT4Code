N, K = gets.split.map(&:to_i)
ary = gets.split.map(&:to_i)
K.upto(N-1) do |n|
    puts ary[n] > ary[n-K] ? 'Yes' : 'No'
end