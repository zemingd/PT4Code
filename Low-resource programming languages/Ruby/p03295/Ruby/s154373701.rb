n,m=gets.split(" ").map(&:to_i)
pairs = []
while line=gets
  break if line.chomp.empty?
  pairs<<line.split(" ").map(&:to_i)
end

def qsort(arr)
  return arr if arr.length <= 1
  pivot = arr.pop
  left, right = arr.partition{|elm| elm[1] < pivot[1] }
  qsort(left) + [pivot] + qsort(right)
end

ok = []
tmp = 0
qsort(pairs).each do |a, b|
  # 最西の島が最東の島よりも西にあること
  if a >= tmp
    tmp = b
    ok << [a,b]
  end
end

p ok.length