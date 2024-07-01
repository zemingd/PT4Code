L,R = gets.split.map(&:to_i)

min = 2019
done = false
(L...R).each do |i|
  (i+1..R).each do |j|
    mod = (i * j) % 2019
    min = mod if mod < min
    if mod == 0
      done = true
      break
    end
  end
  break if done
end

puts min