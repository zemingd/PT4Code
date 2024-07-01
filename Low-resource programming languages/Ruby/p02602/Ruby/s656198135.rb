N, K = gets.chomp.split(' ').map(&:to_i)
A = gets.chomp.split(' ').map(&:to_i)

count = 0

A.each do |a|
  if K <= count
    c = count - K
    if A[c] < a
      puts 'Yes'
    else
      puts 'No'
    end
  end
  count += 1
end
