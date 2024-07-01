n = gets.to_i
$array = gets.split.map(&:to_i)

class Integer
  def factorial
    (1..self).inject(1,:*)
  end
end

hash = $array.group_by(&:itself)
memo = {}
n.times do |index|

  if memo[$array[index]]
    puts memo[$array[index]]
    next
  end

  ans = 0
  hash.each do |key, value|
    n = value.size
    n -= 1 if key == $array[index]
    ans += n.factorial / ((n - 2).factorial * 2)
  end

  memo[$array[index]] = ans
  puts ans
end
