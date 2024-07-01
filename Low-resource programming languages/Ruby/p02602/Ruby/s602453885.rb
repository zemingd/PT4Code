N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

val = 1
b_val = val

A.each_with_index do |a, i|
  val *= a

  if K <= i
    val /= A[i - K]

    if b_val < val
      puts 'Yes'
    else
      puts 'No'
    end
  end

  b_val = val
end
