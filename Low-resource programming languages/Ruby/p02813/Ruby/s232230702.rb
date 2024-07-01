class Integer
  def factorial
    1.upto(self).inject(:*) || 0
  end
end

def position(s, numbers = [*1..s.size], result = 1)
  return result if s.empty?

  result += numbers.rindex(s[0]) * (numbers.size - 1).factorial
  numbers.delete(s[0])
  position(s[1..-1], numbers, result)
end

n = gets.to_i
p = gets.split.map(&:to_i)
q = gets.split.map(&:to_i)

a = position(p)
b = position(q)

puts (a - b).abs
