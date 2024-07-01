n, k, q = gets.split.map(&:to_i)
a_arr = q.times.map{gets.to_i}

answers = Array.new(n){0}

a_arr.each do |a|
  answers[a-1] += 1
end

answers.each do |ans|
  if k - q + ans >=1
    puts 'Yes'
  else
    puts 'No'
  end
end