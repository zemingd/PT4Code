N = gets.chomp.to_i
L = gets.chomp.split(" ").map(&:to_i)

L.sort!

def bsearch(array, value)
  return nil if array.first >= value
  left = 0
  right = array.size
  while left + 1 < right do
    idx = left + (right - left) / 2
    if array[idx] < value then
      left = idx
    else
      right = idx
    end
  end
  left
end

sum = 0
(0..L.size-1).each do |ai|
  (ai+1..L.size-2).each do |bi|
    next if ai == bi
    a = L[ai]
    b = L[bi]
    # p "a = #{a}, b = #{b}, a + b = #{a + b}, l = #{L}"
    # p bsearch(L, a + b)
    i = bsearch(L, a + b)
    next if i == nil
    sum += (i - bi)
  end
end

puts sum