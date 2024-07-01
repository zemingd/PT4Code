N, Y = gets.split(' ').map(&:to_i)

count = [-1, -1, -1]
is_break = false

(0..N).each do |n_i|
  i = N - n_i
  next if 10000*i + 1000*(N-i) > Y
  
  (0..(N-i)).each do |n_i_j|
    j = N - i - n_i_j
    if 10000*i + 5000*j + 1000*(N-i-j) == Y
      count = [i, j, N-i-j]
      is_break = true
      break
    end
    break if is_break
  end
  break if is_break
end

ans = count[0].to_s + ' ' + count[1].to_s + ' ' + count[2].to_s
print ans
