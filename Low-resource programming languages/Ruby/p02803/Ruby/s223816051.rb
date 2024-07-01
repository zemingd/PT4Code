Inf = 100000000

def get_int
  gets.chop.to_i
end

def get_ints
  gets.chop.split.map(&:to_i)
end

def get_double
  gets.chop.to_f
end

def get_str
  gets.chop
end

def get_strs
  gets.chop.split
end

def get_v(i, j, h, w)
  if i < 0 or i >= h
    return -1
  end
  if j < 0 or j >= w
    return -1
  end
  return i + h * j
end

def min(x, y)
  if x < y
    x
  else
    y
  end
end

def main
  h, w = get_ints
  n = h * w
  strs = []
  h.times do
    str = get_str
    strs << str
  end
  edges = []
  n.times do
    edges << [Inf] * n
  end
  0.upto(n-1) do |i|
    edges[i][i] = 0
  end
  0.upto(h-1) do |i|
    0.upto(w-1) do |j|
      node = get_v(i, j, h, w)
      n1 = get_v(i + 1, j, h, w)
      if n1 >= 0 and strs[i+1][j] == "."
        edges[node][n1] = 1
      end
      n2 = get_v(i, j + 1, h, w)
      if n2 >= 0 and strs[i][j+1] == "."
        edges[node][n2] = 1
      end
      n3 = get_v(i - 1, j, h, w)
      if n3 >= 0 and strs[i-1][j] == "."
        edges[node][n3] = 1
      end
      n4 = get_v(i, j - 1, h, w)
      if n4 >= 0 and strs[i][j-1] == "."
        edges[node][n4] = 1
      end
    end
  end
  0.upto(n-1) do |k|
    0.upto(n-1) do |i|
      0.upto(n-1) do |j|
        edges[i][j] = min(edges[i][j], edges[i][k] + edges[k][j])
      end
    end
  end
  ans = 0
  0.upto(n-1) do |i|
    0.upto(n-1) do |j|
      d = edges[i][j]
      if d < Inf and d > ans
        ans = d
      end
    end
  end
  puts ans
end

if __FILE__ == $0
  main
end
