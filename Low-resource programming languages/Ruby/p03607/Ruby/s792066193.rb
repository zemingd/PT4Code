
N=gets.to_i
h=Hash.new

N.times{
  s=gets.to_i

  if h[s]
    h.delete(s)
  else
    h[s] = true
  end
}

print(h.size)