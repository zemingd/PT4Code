H, W = gets.split(' ').map(&:to_i)

arr = H.times.map do
  gets.split('')
end

mes = 'Yes'

for i in 0..(H - 1)
  for j in 0..(W - 1)
    cond = [
      arr.dig(i, j - 1) == '#',
      arr.dig(i, j + 1) == '#',
      arr.dig(i - 1, j) == '#',
      arr.dig(i + 1, j) == '#',
    ].any?

    if arr[i][j] == '#' && !cond
      mes = 'No'
    end
  end
end

puts mes