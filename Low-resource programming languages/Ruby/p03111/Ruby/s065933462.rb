def split_each(arr, number, min)
  if number == 1
    return [[arr]]
  end
  size = arr.length
  hoge = (0..(size-1)).to_a

  max = size - (number - 1) * min
  return Enumerator.new do |r|
    (min..max).each do |n|
      hoge.combination(n) do |combi|
        a = combi.map{|i|arr[i]}
        rest = (hoge-combi).map{|i|arr[i]}

        split_each(rest, number-1, min).each{|i|r << [a, *i]}
      end
    end
  end
end

def calcMP(arr, target)
  return 1000 unless arr[0]
  length = 0
  mp = -10
  arr.each do |i|
    length += i
    mp += 10
  end
  mp += (length - target).abs
  return mp
end

n,a,b,c = gets.split.map &:to_i

l = []
n.times do |i|
  l[i] = gets.to_i
end

min = 1000000
split_each(l, 4, 0).each do |splits|
  current = calcMP(splits[0], a) + calcMP(splits[1], b) + calcMP(splits[2], c)
  min = [min, current].min
end

puts min