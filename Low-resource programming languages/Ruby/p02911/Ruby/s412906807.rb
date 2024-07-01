n, k, q = gets.split(' ').map(&:to_i)

su_ary =
  [].tap do |ary|
    q.times do
      ary.push(gets.to_i)
    end
  end

k_ary = Array.new(n, k)

su_ary.each do |ans|
  k_ary.each_with_index do |_, index|
    k_ary[index] -= 1 unless (index + 1) == ans
  end
end

k_ary.each do |k|
  puts k > 0 ? 'Yes' : 'No'
end

