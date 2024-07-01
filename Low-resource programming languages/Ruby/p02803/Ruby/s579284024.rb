H, W = gets.chop.split.map(&:to_i)

s = []

ans = 0

H.times do |i|
  s << gets.chop
end


def get_ans(x,y,s)
  queue = []
  queue << [x,y]
  ret = []

  arr = Array.new(H).map{Array.new(W,0)}

  arr[x][y] = 0

  until queue.empty?

    i, j = queue.shift


    if i-1 >= 0 && s[i-1][j] == '.' && arr[i-1][j] == 0
      arr[i-1][j] = arr[i][j]+1

      unless ret.include?([i-1][j])
        queue << [i-1,j]
      end
    end

    if j-1 >= 0 && s[i][j-1] == '.' && arr[i][j-1] == 0
      arr[i][j-1] = arr[i][j]+1
      unless ret.include?([i][j-1])
        queue << [i,j-1]
      end
    end

    if j+1 < W && s[i][j+1] == '.' && arr[i][j+1] == 0
      arr[i][j+1] = arr[i][j]+1
      unless ret.include?([i][j+1])
        queue << [i,j+1]
      end
    end

    if i+1 < H && s[i+1][j] == '.' && arr[i+1][j] == 0
      arr[i+1][j] = arr[i][j]+1
      unless ret.include?([i+1][j])
        queue << [i+1,j]
      end
    end

    ret << [i,j]

  end

  arr.flatten.max

end


H.times do |i|
  W.times do |j|
    next if s[i][j] == '#'

    tmp = get_ans(i,j,s)

    ans = tmp > ans ? tmp : ans

  end
end

p ans

