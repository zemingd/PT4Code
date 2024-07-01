input = gets.split(' ').map(&:to_i)
n = input[0]
y = input[1]

def answer(n, y)
  (0..n).each do |i|
    a = i
    (0..(n-i)).each do |j|
      b = j
      c = n - i - j
      if (a * 10 + b * 5 + c * 1) == (y / 1000)
        return "#{a} #{b} #{c}"
      end
    end
  end
  "#{-1} #{-1} #{-1}"
end

puts answer(n, y)
