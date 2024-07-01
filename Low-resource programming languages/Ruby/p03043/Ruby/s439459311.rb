N, K = gets.split.map(&:to_i)

ans = 0

N.times do |i|
  me = i + 1
  
  if me >= K
    
    ans += 1 

  else

    win = Math.log(K / me, 2).ceil


    p_ = ( 1.to_f / (2 ** win) )
  
    ans += p_

  end


end


puts (ans / N.to_f)



