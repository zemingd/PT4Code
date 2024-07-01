N = gets.to_i
as = [nil] + gets.split.map(&:to_i)
bs = Array.new(N+1) { nil }
still_alive = true

N.step(1, -1) do |i|
  multiple_array = bs.map.with_index { |b, j| j % i == 0 ? b : nil }.compact
  if multiple_array.empty?
    bs[i] = as[i]
  else
    sum = multiple_array.inject(:+)
    if as[i] == sum % 2
      bs[i] = 0
    else
      bs[i] = 1
    end
  end
end

puts bs.count(1)
answer_array = bs.map.with_index { |b, i| b == 1 ? i : nil }.compact
puts answer_array.join(" ") unless answer_array.empty?
