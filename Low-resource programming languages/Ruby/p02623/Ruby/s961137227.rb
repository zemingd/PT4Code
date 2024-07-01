def bsearch_find_max(array,x)
  array[bsearch_index_find_max(array, x)]
end

def bsearch_index_find_max(array, x)
  return nil if array.empty?
  return array.size - 1 if array.last <= x
  index = array.bsearch_index{|a| a > x}
  return nil if index.nil? || index.zero?
  index = index - 1
end

n,m,k = gets.split.map(&:to_i)
tmp_as = gets.split.map(&:to_i)
tmp_bs = gets.split.map(&:to_i)

as = []
tmp_as.each.with_index do |a, i|
  if i == 0
    as[i] = a
  else
    as[i] = as[i-1] + a
  end
end

bs = []
tmp_bs.each.with_index do |b, i|
  if i == 0
    bs[i] = b
  else
    bs[i] = bs[i-1] + b
  end
end

ans = 0
as.each.with_index do |a, a_i|
  leftover = k - a
  break if leftover < 0

  b_i = bsearch_index_find_max(bs, leftover)
  b_cnt = b_i.nil? ? 0 : b_i + 1
  ans = [ans, a_i + 1 + b_cnt].max
end

puts ans
