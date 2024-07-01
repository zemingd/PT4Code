n, m = gets.split.map(&:to_i)
array = (1..n).to_a
m.times do
  l, r = gets.split.map(&:to_i)
  array.map! { |num|
    if num && (l <= num && num <= r)
      num
    else
      nil
    end
  }
end
puts array.compact.count
