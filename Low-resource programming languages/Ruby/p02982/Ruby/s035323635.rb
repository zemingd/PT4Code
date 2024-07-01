require 'prime'

N, D = $<.gets.chomp.split.map(&:to_i)
X = $<.read.split(?\n).map {|x| x.split.map(&:to_i)}

def integer?(a, b, d)
  sum =
    Array
      .new(d) {|i| (a[i] - b[i]) ** 2}
      .reduce(:+)

  Prime.prime_division(sum).all? {|prime, count| count % 2 == 0}
end

X
  .combination(2)
  .count {|a, b| a != b && integer?(a, b, D)}
  .tap(&method(:puts))