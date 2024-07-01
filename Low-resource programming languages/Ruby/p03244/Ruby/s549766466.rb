n = STDIN.gets.to_i
vs = STDIN.gets.strip.split(" ").map(&:to_i)

def count(a)
  cnt = {}
  a.each { |v| cnt[v] ||= 0; cnt[v] += 1 }
  cnt.sort_by { |v, cnt| cnt }.reverse
end

def reverse?(a, b, n)
  return true if a[0][1] < b[0][1]
  return false unless a[0][1] == b[0][1]
  aa = a[1] ? a[1][1] : (n/2 - a[0][1])
  bb = b[1] ? b[1][1] : (n/2 - b[0][1])
  return true if aa > bb
  false
end

a = []
b = []
vs.each_with_index do |v, i|
  if i % 2 == 0
    a << v
  else
    b << v
  end
end

ca = count(a)
cb = count(b)
ans = 0

# aa = [
#   ca,
#   cb
# ]
aa = [
  cb.reverse,
  ca
]
if reverse?(aa[0], aa[1], n)
  aa = aa.reverse
end

used = {}
aa.each do |c|
  no_ans = true

  c.each do |v, cnt|
    next if used[v]
    used[v] = true
    ans += n/2 - cnt
    no_ans = false
    break
  end

  if no_ans
    ans += n / 2
  end
end
puts ans