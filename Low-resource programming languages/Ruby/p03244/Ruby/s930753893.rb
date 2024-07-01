N = gets.to_i
V = gets.split.map(&:to_i)

odd = Hash.new(0)
even = Hash.new(0)

V.each_with_index do |v, i|
  if i.even?
    even[v] += 1
  else
    odd[v] += 1
  end
end

odd = odd.sort_by { |v, cnt| -cnt }
even = even.sort_by { |v, cnt| -cnt }

def cnt(list1, list2)
  ans = 0
  n, cnt = list1.first

  ans += N / 2 - cnt

  d2 = list2.find { |m, cnt| m != n }

  if d2
    ans + N / 2 - d2.last
  else
    ans + N / 2
  end
end

ans = [cnt(odd, even), cnt(even, odd)].min
puts ans

