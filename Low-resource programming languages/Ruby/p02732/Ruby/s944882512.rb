n = gets.to_i
as = gets.split.map(&:to_i)

counts = Hash.new(0)

as.each do |a|
  counts[a] += 1
end

ans = Array.new(n + 1, 0)

counts.keys.each do |picked|
  counts.each do |(k, v)|
    ans[picked] += if picked == k
                     [*0..v - 2].combination(2).count
                   else
                     [*0..v - 1].combination(2).count
                   end
  end
end

as.each do |a|
  puts ans[a]
end
