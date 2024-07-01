

$clist = ('a'..'z').to_a + ["a"]
def nextc(c)
  c = $clist[c.ord - 96]
end

def change(str,pos)
  str[pos] = nextc(str[pos])
  str
end

$memo = Hash.new(nil)
def try_rosolve(str, k, pos)
  return $memo[[str,k,pos]] unless $memo[[str,k,pos]].nil?

  # puts "#{str} ,#{pos},#{k}"
  if k == 0 || str.length == pos then
    $memo[[str,k,pos]] = str
    return str
  end

  dk = k
  best = str.dup

  next_str = str.dup
  for i in 0...26 do\
    result = try_rosolve(next_str.dup, dk ,pos + 1)
    best = result if result < best

    change(next_str,pos)
    dk = dk - 1
    break if dk == -1
  end

  $memo[[str,k,pos]] = best
  best
end

s = gets.chomp
k = gets.to_i

puts try_rosolve(s,k,0)
