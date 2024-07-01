N = gets.to_i
root = (N ** (1 / 2.to_f)).floor
root.step(0, -1) do |num|
  if N % num == 0
    puts [num.to_s.length, (N / num).to_s.length].max
    break
  end
end
