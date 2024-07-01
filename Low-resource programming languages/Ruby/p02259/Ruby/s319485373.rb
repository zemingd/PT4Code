def geta(n=0)
  return $stdin.gets.to_i if n==0
  ar = []
  n.times do 
    ar << $stdin.gets.chomp.split
  end
  return ar.flatten(1) if n<=1
  return ar
end

def exchange(i,sorted)
  cnt = 0
  0.step(sorted-1) do |j|
    if @ar[j] > @ar[j+1]
      @ar[j],@ar[j+1] = @ar[j+1],@ar[j]
      cnt += 1
    end
  end
  return cnt
end

n = geta(0)
@ar = geta(1).map(&:to_i)

sorted = n-1
cnt = 0
0.step(sorted,1) do |i|
  cnt += exchange(i,sorted)
  sorted -= 1
end

p cnt
