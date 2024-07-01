N, M = gets.chomp.split(' ').map(&:to_i)
A = gets.chomp.split(' ').map(&:to_i)

sum_a = A.inject(&:+)
A.sort! {|x,y| y<=>x}

puts A[M - 1] < sum_a / 4 / M ? 'No' : 'Yes'
