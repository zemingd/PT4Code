n, y = gets.split.map(&:to_i)

t =
  catch(true) do
    (0..n).each do |a|
      (0..(n - a)).each do |b|
        c = n - a - b
        next if c < 0
        total = 10000 * a + 5000 * b + 1000 * c
        throw(true, [a, b, c]) if total == y
      end
    end
    [-1] * 3
  end

puts t.join(' ')
