$cnt_hash = {}
def count(cnt)
  return 0 if cnt < 2
  return 1 if cnt == 2
  return $cnt_hash[cnt] if $cnt_hash[cnt]

  res = cnt + count(cnt-1) - 1
  $cnt_hash[cnt] = res
  res
end

n = gets.to_i
h = {}
n.times {
  s = gets.chomp.split("").sort.join.to_sym
  h.has_key?(s) ? h[s] += 1 : h[s] = 1
}

sum = 0
h.values.each do |c|
  sum += count(c)
end
puts(sum)
