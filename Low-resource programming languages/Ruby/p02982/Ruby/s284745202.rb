require 'complex'
n, d = gets.split.map(&:to_i)
input_list = Array.new
n.times do |input|
  input = gets.split.map(&:to_i)
  input_list.push(input)
end
#p input_list
count=0
i = 0
while i < n - 1
  #print("i=#{i}\n")
  m = i + 1
  while m <= n - 1

    #k:計算中の要素のindexを入れる変数
    k = 0
    x = 0
    y = 0
    while k < d
      #print("i=#{i}, m=#{m}, k=#{k}\n")
      #print("#{input_list[i][k]} - #{input_list[m][k]}\n")
      x += (input_list[i][k] - input_list[m][k]) ** 2
      #p x
      k += 1
    end
    xr = Math.sqrt(x)
    #p xr

    if xr == xr.to_i
      count+=1
    end
  m += 1
end
i += 1
end
p count
