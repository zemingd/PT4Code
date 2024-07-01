k = gets.to_i
a, b = gets.split.map(&:to_i)

(a..b).each do |c|
  if c % k == 0
    return  'OK'
    break
  end

  if b == c
    return 'NG
  end
end'