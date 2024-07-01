# https://beta.atcoder.jp/contests/abc112/tasks/abc112_c

N = gets.to_i
@xyh = $<.read.split(/\n/).map{|i|i.split.map{|j|j.to_i}}

def check(cx, cy, ch)
  @xyh.each do |x, y, h|
    return false if [ch - (x-cx).abs - (y-cy).abs, 0].max != h
  end
  true
end

(0..100).each do |cy|
  (0..100).each do |cx|
    @xyh.each do |i|
      ch = (i[0]-cx).abs + (i[1]-cy).abs + i[2]
      break if ch < 0
      if check(cx, cy, ch)
        puts "#{cx} #{cy} #{ch}"
        exit 
      end
    end
  end
end
puts '0 0 0'

