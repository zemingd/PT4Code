data = gets.split(" ").map{|nn|nn.to_i}
k = data[1]

members = gets.chomp

blocks = []

members = members.chars

lastman = members[0]
coutinuemen = 1
for i in 1..(members.size-1) do
  if lastman == members[i]
    coutinuemen += 1
  else
    blocks << coutinuemen
    coutinuemen = 1
    lastman = members[i]
  end
end
blocks << coutinuemen
enough = 100000000
if blocks[0] == "1"
  enough = (blocks.size / 2.0).floor
else
  enough = (blocks.size / 2.0).ceil
end


if enough <= k
  puts members.size.to_s
else
  getrange = k + k + 1
  maxsize = blocks.size - getrange
  tmpmax = -1

  if members[0] == "1"
    i = 0
    result = 0
    getrange.times do|offset|
      break if offset + i >= blocks.size
      result += blocks[offset + i]
    end
    i = 2
    while i <= maxsize
      result -= blocks[i-1]
      result -= blocks[i-2]
      result += blocks[i+getrange-1]
      result += blocks[i+getrange-2]
      if tmpmax < result
        tmpmax = result
      end

      i += 2
    end
    #お尻のテスト
    if members.last == "0"
      result = blocks.last(getrange-1).inject(:+)
      if tmpmax < result
        tmpmax = result
      end
    end
  else
    i = 1
    result = 0
    getrange.times do|offset|
      break if offset + i >= blocks.size
      result += blocks[offset + i]
    end
    i = 3
    tmpmax = result
    while i <= maxsize
      result -= blocks[i-1]
      result -= blocks[i-2]
      result += blocks[i+getrange-1]
      result += blocks[i+getrange-2]
      if tmpmax < result
        tmpmax = result
      end

      i += 2
    end
    if members[0] == "0"
    result = blocks.first(getrange-1).inject(:+)
    if tmpmax < result
      tmpmax = result
    end
    end
  end

  puts tmpmax.to_s
end

