N = gets.to_i
L = gets.to_s.split.map(&:to_i)
count = 0
L.each.with_index do |l, i|
  (N - i).times do |j|
    if L[i + 2 + j] == nil
      next
    end
    if l < L[i + 1] + L[i + 2 + j]
      puts "#{l}: #{L[i + 1]}: #{L[i + 2 + j]}"
      if L[i + 1] < l + L[i + 2 + j]
        if L[i + 2 + j]  < l + L[i + 1]
          count += 1
        end
      end
    end
  end
end

puts count