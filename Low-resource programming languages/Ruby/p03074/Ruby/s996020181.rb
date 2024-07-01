N, K = gets.split.map(&:to_i)
S = gets

cur_n = "1";

num = 0

arr = []

max = 0

S.length.times do |i|
  
  if S[i] != cur_n
    arr.push(num)
    num = 1
    cur_n = S[i]
  else
    num += 1
  end
end  

arr.length.times do |i|
  p_ = 0

  if(i % 2 == 0)
    (K*2 + 1).times do |j|
      break if i + j >= arr.length
      p_ += arr[i + j].to_i      
    end
  
  else

    (K*2).times do |j|
      break if i + j >= arr.length
      p_ += arr[i + j].to_i      
    end
  
  end

  if p_ > max
    max = p_
  end
end

puts max
