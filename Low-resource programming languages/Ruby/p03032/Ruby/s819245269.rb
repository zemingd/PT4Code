N,K = gets.split(' ').map(&:to_i)
As = gets.split(' ').map(&:to_i)

pool = Array.new
cnt=0
if N>K
  cnt=K
else
  cnt = N
end
#puts cnt
max=0
candi=0
#out = 全体で何個取るか
#in = 左から何個取るか
for out in 0..cnt

  for inner in 0..(out)
    pool = Array.new
    #pool.push(As[in])
    if inner>0
     for i in 0..(inner-1)
      pool.push(As[i])
     end
    end
    if inner != out
     for i in 0..(out-inner-1)
      pool.push(As[N-1-i])
     end
    end
    pool.sort!
#=begin
    #puts pool
    #puts "aaa"
    throw = K - out
    if throw>pool.length
      throw = pool.length
    end
    candi = pool.sum
    for i in 0..throw-1
      if pool[i]<0
        candi -= pool[i]
      else
        break
      end
    end
    if candi > max
      max = candi
    end

  end
#=end

end
puts max