# https://beta.atcoder.jp/contests/abc112/tasks/abc112_c

N = gets.to_i
@xyh = $<.read.split(/\n/).map{|i|i.split.map{|j|j.to_i}}

def get_ch(x, y, h, cx, cy)
  return (x-cx).abs + (y-cy).abs + h
end

def check(cx, cy, ch)
  @xyh.each do |x, y, h|
    return false if [ch - (x-cx).abs - (y-cy).abs, 0].max != h
  end
  true
end

(0..100).each do |cy|
  (0..100).each do |cx|
    @xyh.each do |i|
      ch = get_ch(i[0], i[1], i[2], cx, cy)
      break if ch < 0
      if check(cx, cy, ch)
        puts "#{cx} #{cy} #{ch}"
        return
      end
    end
  end
end

