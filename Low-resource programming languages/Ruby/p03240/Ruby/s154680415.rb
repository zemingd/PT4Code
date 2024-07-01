N = gets.to_i

xyh = []

hmax = 0

N.times do |i|
  xyh[i] = gets.split.map(&:to_i)

  if xyh[i][2] > hmax
    hmax = xyh[i][2]
  end
end

ans_cx = 0
ans_cy = 0
ans_h = 0

catch(:break_loop) do
  for hh in hmax..hmax+200 do
    for cx in 0..100 do
      for cy in 0..100 do
        for i in 0..N-1 do
          break if xyh[i][2] != [hh-(xyh[i][0]-cx).abs-(xyh[i][1]-cy).abs, 0].max
          next if i != N-1
          ans_cx = cx
          ans_cy = cy
          ans_h = hh
          throw:break_loop
        end
      end
    end
  end
end
puts "#{ans_cx} #{ans_cy} #{ans_h}"
