N = gets.to_i

keta = N.to_s.length

def build(list,s,n,keta)
  if s.length == keta
    s_n =  s.to_i
    if s_n <= n && s.include?('3') && s.include?('5') && s.include?('7')
      list << s_n
    end
    return
  end
  
  ['3', '5', '7'].each do |ss|
    build(list, s + ss, n, keta)
  end
end


def calc(n)
  3 - 3*(2**n) + 3**n
end

res = 0

(3...keta).each do |i|
  res += calc(i)
end


list = []
build(list, '', N, keta)
res += list.length

p res
