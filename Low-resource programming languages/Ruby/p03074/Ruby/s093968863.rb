N, K = gets.split.map(&:to_i)
S = gets

cur_n = "1";

num = 0

arr = []

max = 0

prev = false

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
  p_ = prev
  
  if(i % 2 == 0)
    if !prev 
      p_ = 0
      (K*2 + 1).times do |j|
        break if i + j >= arr.length
        p_ += arr[i + j].to_i
  
      end
    else
      break if i + K * 2 >= arr.length
      
      p_ += (arr[i + K * 2] + arr[i + K * 2 - 1])
      
      p_ -= (arr[i - 2] + arr[i - 1])
    
    end

  max = p_ if p_ > max
  prev = p_

  else
    next  
  end

end

puts max
