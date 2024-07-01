h, w = gets.chomp.split(" ").map(&:to_i)
a = ""
h.times { a.concat(gets.chomp) }

require "set"

def process1(a, h, w)
  idx = 0
  blacks = Set.new
  while (idx = a.index("#", idx))
    i = idx / w
    j = idx % w
    blacks << [i - 1, j] if i > 0
    blacks << [i + 1, j] if i < h - 1
    blacks << [i, j - 1] if j > 0
    blacks << [i, j + 1] if j < w - 1
    idx += 1
  end
  blacks.each { |i, j| a[i * w + j] = "#" }
  a
end

def process2(a, h, w)
  idx = 0
  blacks = Set.new
  while (idx = a.index(".", idx))
    i = idx / w
    j = idx % w
    if (i > 0     && a[(i-1)*w+j] == "#") ||
       (i < h - 1 && a[(i+1)*w+j] == "#") ||
       (j > 0     && a[i*w+(j-1)] == "#") ||
       (j < w - 1 && a[i*w+(j+1)] == "#")
      blacks << [i, j]
    end
    idx += 1
  end
  blacks.each { |i, j| a[i * w + j] = "#" }
  a
end

cnt = 0
threshold = w * h / 2
while (white_cnt = a.count(".")) > 0
  cnt += 1
  a = if white_cnt > threshold
        process1(a, h, w)
      else
        process2(a, h, w)
      end
end

puts cnt
