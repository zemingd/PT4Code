n = gets
array = gets.split.map(&:to_i)

array.sort!


def zikkou(array, p)
  array.inject(0) do |result, item|
    result + ((item - p) * (item - p))
  end
end


p = (array.first + array.last / 2)
ans = Float::INFINITY

if zikkou(array, p) < zikkou(array, p + 1)
  loop do
    if ans < tmp = zikkou(array, p)
      break
    else
      ans = tmp
      p -= 1
    end
  end
else
  loop do
    if ans < tmp = zikkou(array, p)
      break
    else
      ans = tmp
      p += 1
    end
  end
end

puts ans
