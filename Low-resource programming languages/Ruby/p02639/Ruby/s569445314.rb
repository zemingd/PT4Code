a = gets.split(' ').map(&:to_i)

c = 0

a.each do |b|
  c += 1
  if b == 0
    p c
  end
end
