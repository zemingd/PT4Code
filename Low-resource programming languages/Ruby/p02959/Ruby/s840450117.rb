N = gets.to_i
as, bs = 2.times.map{gets.split(' ').map(&:to_i)}
kills = 0
bs.each_with_index do |b, i|
  if as[i] >= b
    as[i] -= b
    kills += b
  else
    kills += as[i]
    next_a = as[i + 1] - (b - as[i])
    if next_a <= 0
      kills += as[i + 1]
      as[i], as[i + 1] = 0, 0
    else
      kills += (b - as[i])
      as[i], as[i + 1] = 0, as[i + 1] - (b - as[i])
    end
  end
end
p kills