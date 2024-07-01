
def combi(n, k)
  k = [k, n - k].min

  val = if k == 0
          1
        else
          combi(n - 1, k - 1) * n / k
        end

  val
end
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
          v - 1 < 2 ? 0 : combi(v - 1, 2)
        else
          combi(v, 2)
                   end
    ans[picked] += c
  end
end

as.each do |a|
  puts ans[a]
end