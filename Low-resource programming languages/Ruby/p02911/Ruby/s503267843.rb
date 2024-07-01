n,k,q = gets.split.map(&:to_i)
ary = [0] * (n + 1)
q.times do
  i = gets.to_i
  ary[i] += 1
end

(1..n).each do |i|
  if (k - q + ary[i]) > 0
    puts 'Yes'
  else
    puts 'No'
  end
end


