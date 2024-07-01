N, M = gets.chomp.split.map(&:to_i) # No. of islands, bridges
bridges = []
M.times do
  bridges.push gets.chomp.split.map(&:to_i)
end
#p bridges

NN = N*(N - 1)/2
ns = [NN]
par = (0..(N-1)).to_a
num = [1] * N

def merge(n1, n2, par, num)
  r1, par = get_root(n1, par)
  r2, par = get_root(n2, par)
  if r1 != r2
    if num[r1] < num[r2] then r1, r2 = r2, r1 end
    par[r2] = r1
    num[r1] = num[r1] + num[r2]
    num[r2] = 0
  end
  [par, num]
end

def is_root?(n, par) par[n] == n end
  
def get_root(n, par)
  if is_root?(n, par)
    [n, par]
  elsif is_root?(par[n], par)
    [par[n], par]
  else
    r, par = get_root(par[n], par)
    par[n] = r
    [r, par]
  end
end

def count_inconvenience(num)
  NN - num.map{|num| ((num == 0) ? 0 : num * (num - 1) / 2)}.reduce(&:+)
end

(M-1).downto(1).each do |i|
  bridge = bridges[i]
  per, num = merge(bridge[0]-1, bridge[1]-1, par, num)
  ns.push count_inconvenience(num)
end

ns.reverse.each do |n| print("#{n}\n") end