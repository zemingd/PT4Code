n = gets.to_i
as = []
n.times do
  as << gets.split.map(&:to_i)
end

cx = nil
cy = nil

(0..100).each do |x|
  (0..100).each do |y|
    h = nil
    flg = true
    as.each do |a|
      next unless flg
      tmp = [a[2] + (a[0] - x).abs + (a[1] - y).abs, 0].max
      if tmp == 0
        flg = false
      end
      if h && h != tmp
        flg = false
      else
        h ||= tmp
      end
    end
    if flg
      cx = x
      cy = y
      break
    end
  end
end

cx ||= 0
cy ||= 0
a = as[0]
h = a[2] + (a[0] - cx).abs + (a[1] - cy).abs
puts "#{cx} #{cy} #{h}"
