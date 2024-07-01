n = gets.to_i
$array = gets.split.map(&:to_i)
$kaizyoumemo = {}
class Integer
  def factorial
    if ans = $kaizyoumemo[self]
      return ans
    end

    n = (1..self).inject(1,:*)
    $kaizyoumemo[self] = n
    n
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
    plus = n.factorial / ((n - 2).factorial * 2)
    ans += plus
  end

  memo[$array[index]] = ans
  puts ans
end
