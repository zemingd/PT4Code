N,K = gets.split.map(&:to_i)

data = []
now_k = nil

N.times do
  a,b = gets.split.map &:to_i

  flag = true
  len = 0
  data.each_with_index do |d, i|
    p len += d[1]

    # K番目の値を保持してそれより大きかったら終了

    if d[0] == a
      d[1] += b
      flag = false
      break
    elsif a < d[0]
      data.insert(i, [a,b])
      flag = false
      break
    elsif K <= len
      flag = false
      break
    end
  end

  data << [a,b] if flag
end

p data

len = 0
data.each do |(v, n)|
  len += n
  if K <= len
    puts v
    break
  end
end
