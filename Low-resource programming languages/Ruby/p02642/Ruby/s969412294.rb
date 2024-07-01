N = gets.to_i
ary = gets.split.map(&:to_i).sort
result_ary =[]
result_ary.push ary.shift
N-1.times{
  a = ary.shift
  count = result_ary.count
  result_ary.each do |j|
    if a % j != 0
      count -= 1
    end
  end
  if count == 0
    result_ary.push a
  else
    break
  end
}
puts result_ary.count + 1