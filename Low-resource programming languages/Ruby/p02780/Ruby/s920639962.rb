s, t = gets.split.map(&:to_i)
array = gets.split.map(&:to_i)
max_array = []
maximum = 0
answers = []

(0..s-t).each do |i|
  tmp = array[i..i+t-1]
  if maximum < tmp.inject(:+)
    max_array = tmp
  end

  targets = max_array
  ans = 0
  targets.each do |target|
    (1..target).each do |t|
      ans += t.to_f / target
    end
  end
  answers << ans
end

an = 0
answers.each do |a|
  if an < a
    an = a
  end
end
puts an
