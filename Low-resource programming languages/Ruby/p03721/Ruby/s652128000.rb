N,K = gets.split.map(&:to_i)

data = []
now_k = nil

N.times do
  a,b = gets.split.map &:to_i

  flag = true
  len = 0

  data.each_with_index do |d, i|
    if now_k && now_k < d[0]
      flag = false
      break
    end

    # K番目の値を保持してそれより大きかったら終了

    if d[0] == a
      d[1] += b
      flag = false
    elsif a < d[0]
      data.insert(i, [a,b])
      flag = false
    end

    len += d[1]
    if K <= len
      now_k = d[0]
      flag = false
    end

    unless flag
      break
    end
  end

  data << [a,b] if flag
end

# warn data

len = 0
data.each do |(v, n)|
  len += n
  if K <= len
    puts v
    break
  end
end
