@cache = {}

def count(x)
  return 0 if x == 0 || x.odd?
  return @cache[x] if @cache.key?(x)
  @cache[x] = count(x / 2) + 1
end

n = gets.to_i
digits = gets.split.map(&:to_i)

puts digits.reduce(0){|sum, digit| sum + count(digit)}