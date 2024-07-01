L, R = gets.split.map(&:to_i)

min = 10**10
L.upto(R-1) do | i |
  (i+1).upto(R) do | j |
    min = min < (i*j)%2019 ? min : (i*j)%2019
    if min == 0
      p 0
      exit
    end
  end
end
p min