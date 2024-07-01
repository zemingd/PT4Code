n = gets.to_i
ls = gets.chomp.split.map(&:to_i).sort
cnt_array = Array.new(ls[-1]+1,0)
ans = 0
ls.each do |l|
  cnt_array[l] += 1
end
(0..n-3).each do |i|
  (i+1..n-2).each do |j|
    (j+1..n-1).each do |k|
      if ls[i] + ls[j] > ls[k]
        ans += cnt_array[ls[i]] * cnt_array[ls[j]] * cnt_array[ls[k]]
      end
    end
  end
end

puts ans

