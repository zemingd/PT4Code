a, b = gets.split(" ").map(&:to_i)
attrs = Array.new
ary = Array.new
i = 0

while line = $stdin.gets  
  aa, bb = line.chomp.split(" ")
  for cnt in aa..bb do
    ary << cnt
  end 
  i += 1
  break if i == b
end

ary2 = Array.new
# 配列の要素:キー、配列の要素の個数:値にしたオブジェクトを作成
ary2 = ary.each_with_object(Hash.new(0)){|v,o| o[v]+=1}

#puts "#{ary2}"
puts  ary2.select {|k, v| v == b}.size#
