N, M = gets.chop.split.map(&:to_i)
A = gets.chop.split(' ').map(&:to_i)

hoge = A.sort.reverse
sum = A.inject(:+)

flag = true

M.times do |i|
  if sum % (4 * M) == 0
    if hoge[i] < sum / (4 * M)
      flag = false
      break
    end
  else
    if hoge[i] <= sum / (4 * M)
      flag = false
      break
    end
  end
end

puts flag ? 'Yes' : 'No'
