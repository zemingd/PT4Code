n = gets.to_i
ps = gets.split.map(&:to_i)
qs = gets.split.map(&:to_i)

p_i = nil
q_i = nil

permutation = (1..n).to_a.permutation.to_a
permutation.each.with_index(1) do |array, i|
  if array == ps
    p_i = i
  elsif array == qs
    q_i = i
  end
end

puts (p_i - q_i).abs