N,M = gets.split(" ").map { |e| e.to_i }
yobo = []
for i in 0..M-1 do
  a,b = gets.split(" ").map { |e| e.to_i }
  yobo << [a,b]
end

yobo.sort! {|a, b| a[1] <=> b[1]}

array = Array.new(N) { 1 }

count = 0
yobo.each do |i|
  if array[i[1]-1] != 0
    # arr = array[i[0]..i[1]-1]
    # if !arr.include?(0)
    #   array[i[1]-1] = 0
    #   count += 1
    # end
    for j in i[0]..i[1]-1 do
      flag = 0
      if array[j] == 0
        flag == 1
        break
      end
    end
    if flag == 0
      array[i[1]-1] = 0
      count += 1
    end
  end
end

puts count