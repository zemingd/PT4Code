n = gets.to_i
$array = gets.split.map(&:to_i)

class Integer
  def factorial
    (1..self).inject(1,:*)
  end
end

hash = $array.group_by(&:itself)
