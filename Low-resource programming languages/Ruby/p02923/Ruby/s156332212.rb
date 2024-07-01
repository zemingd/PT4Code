N = gets.to_i
H = gets.chomp.split(" ")
H.map!{|x| x.to_i}

max_count = 0  #最大数カウント
i = 0
while i < H.length - 1
  count = 0 #移動回数カウント
  while i < H.length - 1
    if H[i] >= H[i+1]
      i += 1
      count += 1
    else
      i += 1
      break
    end
  end
  max_count = count if max_count < count
end

p max_count
