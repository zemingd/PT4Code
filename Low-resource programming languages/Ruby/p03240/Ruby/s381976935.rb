N = gets.chomp.to_i
_H = 0
_Cx = 0
_Cy = 0
data = []
N.times do
  x, y, h = gets.chomp.split().map(&:to_i)
  data << [x, y, h]
end

(0..100).each do |cx|
  (0..100).each do |cy|
    hary = []
    hary_count = 0
    data.each do |d|
      x, y, height = d
      h = (x-cx).abs + (y-cy).abs + height
      hary << h
      break if (hary[hary_count] != hary[hary_count-1]) && hary_count >= 1
      hary_count += 1
    end
    s = hary.uniq
    if s.length == 1
      _H = s[0]
      _Cx = cx
      _Cy = cy
      puts "#{_Cx} #{_Cy} #{_H}"
      exit
    end
  end
end