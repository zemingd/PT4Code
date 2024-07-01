gets
as=gets.split.map(&:to_i)

def calc(m,ns)
  ret = 0
  ns.each do |n|
    ret += m % n
  end
  ret
end

p calc(as.inject(&:lcm)-1, as)