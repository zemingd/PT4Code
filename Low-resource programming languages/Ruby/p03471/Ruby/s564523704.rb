def dp(step, money)
  (0..step).each do |yukichi|
    (0..step - yukichi).each do |higuchi|
      # (0..step - yukichi).each do |hideyo| next unless (yukichi + higuchi + hideyo) == step
      hideyo = step - yukichi - higuchi
      return [yukichi, higuchi, hideyo] if
        yukichi * 10 + higuchi * 5 + hideyo * 1 == money
      # end
    end
  end
  return [-1, -1, -1]
end

n, y = gets.split
res = dp(n.to_i, y.to_i / 1000)
puts res.join(" ")
