n = gets.to_i
as = gets.split.map(&:to_i)

counts = Hash.new(0)

as.each do |a|
  counts[a] += 1
end

ans = Array.new(n + 1, 0)

counts.keys.each do |picked|
  counts.each do |(k, v)|
    c = if picked == k
          (v - 1) * (v - 2) / 2
        else
          v * (v - 1) / 2
                   end
    ans[picked] += c
  end
end

puts(ans: ans)
as.each do |a|
  puts ans[a]
end
