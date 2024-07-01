H, W = gets.chomp.split(' ').map(&:to_i)
map = []
blacks = []
H.times do |h|
  map.push(gets.chomp.split('').map.with_index do |c, w|
    if c == '#'
      blacks.push [h,w]
    end
    c == '#'
  end)
end
result = 0
H.times do |h|
  W.times do |w|
    catch :next do
      next if map[h][w]
      1.upto(H+W) do |d|
        (d+1).times do |_dh|
          _dw = d - _dh
          [1,-1].each do |flgh|
            dh = _dh * flgh
            next if h+dh >= H || h+dh <0
            [1,-1].each do |flgw|
              dw = _dw * flgw
              next if w+dw >= W || w+dw <0
              if map[h+dh][w+dw]
                result = d if d > result
                throw :next
              end
            end
          end
        end
      end
    end
  end
end
puts result