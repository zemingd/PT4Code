N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

A.each_with_index do |a, i|
  if K <= i
    if A[i - K] < a
      puts 'Yes'
    else
      puts 'No'
    end
  end
end
