# https://beta.atcoder.jp/contests/abc112/tasks/abc112_c

N = gets.to_i
XYH = $<.read.split(/\n/).map{|i|i.split.map{|j|j.to_i}}

@memo = Array.new(101).map{Array.new(101).map{Hash.new}}
def check(cx, cy, ch)
  m = @memo[cy][cx][ch.to_s]
  return m unless m.nil?
  XYH.each do |x, y, h|
    if [ch - (x-cx).abs - (y-cy).abs, 0].max != h
      return @memo[cy][cx][ch.to_s] = false
    end
  end
  @memo[cy][cx][ch.to_s] = true
end

(0..100).each do |cy|
  (0..100).each do |cx|
    XYH.each do |i|
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

