STDIN.gets
alist = []
nums = {}
kumi = {}
cache = {}

STDIN.gets.split.each do |a|
  a = a.to_i
  alist << a
  nums[a] ||= 0
  nums[a] += 1
end

alist.each do |a|
  unless cache.key?(a)
    r = 0
    nums.each do |n,s|
      t = a == n ? (s - 1) : s
      kumi[t] ||= t * (t - 1) / 2
      r += kumi[t]
    end
    cache[a] = r
  end
  puts cache[a]
end
