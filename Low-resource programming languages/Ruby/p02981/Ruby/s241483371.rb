n, a, b = gets.split.map(&:to_i)

fee_bus = a * n
fee_taxy = b

out = case
  when fee_bus <= fee_taxy
  fee_bus
  else
  fee_taxy
  end

puts out