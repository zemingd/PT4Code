N, M, X = gets.chomp.split(" ").map(&:to_i)

line = []
N.times do
  line << gets.chomp
end


DATA = []
line.each_with_index do |row, i|
  values = row.split(" ").map(&:to_i)
  DATA[i] = {c: values.shift, a: values}
end
#p DATA


def hoge(arr)
  price = 0
  lern = []

  arr.each do |i|
    price += DATA[i][:c]

    M.times do |j|
      # 全参考書の学習度
      lern[j] = 0 unless lern[j]
      lern[j] += DATA[i][:a][j]
    end
  end

  {
    price: price,
    val: lern.map{|l| X - l},
    learned: lern.map{|l| X - l}.all?{|v| v <= 0}
  }
end

results = []

N.times do |j|
  (0..N-1).to_a.combination(j+1).to_a.each do |_arr|
    results << hoge(_arr)
  end
end

lern_arr = results.select{|h| h[:learned]}

if lern_arr.count == 0
puts -1
else
  puts lern_arr.min{|h| h[:price]}[:price]
end