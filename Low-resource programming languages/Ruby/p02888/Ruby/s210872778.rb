n = gets.chomp.to_i
l_list = gets.chomp.split.map(&:to_i)

l_list.sort!

ans = 0

(0..(n-3)).each do |i|
  ((i+1)..(n-2)).each do |j|
    tmp = l_list[i] + l_list[j]
    ((j+1)..(n-1)).each do |k|
      if l_list[k] < tmp
        ans += 1
        next
      else
        break
      end
    end
  end
end

puts ans
