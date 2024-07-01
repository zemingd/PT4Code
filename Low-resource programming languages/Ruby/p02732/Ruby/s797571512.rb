n = gets.to_i
$array = gets.split.map(&:to_i)

class Integer
  def factorial
    (1..self).inject(1,:*)
  end
end

hash = $array.group_by(&:itself)
n.times do |index|

  ans = 0
  hash.each do |key, value|
    n = value.size
    n -= 1 if key == $array[index]
    ans += n.factorial / ((n - 2).factorial * 2)
  end

  puts ans
end
