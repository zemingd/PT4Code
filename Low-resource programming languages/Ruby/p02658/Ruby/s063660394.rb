io = STDIN
N=io.gets.to_i
a=io.gets.split.map(&:to_i)
def calc(a)
  lim=10**18
  return 0 if a.include?(0)
  a.inject(1) do |s,i|
    p [s,i]
    s=s*i
    return -1 if s>lim
    s
  end
end
puts calc(a)
