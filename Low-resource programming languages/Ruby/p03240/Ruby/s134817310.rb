n = gets.chomp.to_i
xyh = []
n.times do
  xyh.push gets.split.map(&:to_i)
end
all = (0..100).to_a.product((0..100).to_a)
candidates = []
is_first=true
xyh.each do |e|
  x = e[0]
  y = e[1]
  h = e[2]
  as = []
  (is_first ? all : candidates).each do |a|
    cx = a[0]
    cy = a[1]
    ch = a[2]
    if h > 0
      cch = h + (x-cx).abs + (y-cy).abs
      as.push [cx, cy, cch] if is_first || ch == cch
    else
      i = 1
      if is_first
        while i - (x-cx).abs - (y-cy).abs <= 0
          as.push [cx, cy, i] if is_first || i == ch
          i+=1
        end
      else
        as.push [cx, cy, ch] if ch - (x-cx).abs - (y-cy).abs <= 0
      end
    end
  end
  candidates = as
  is_first=false
end
puts candidates.first.join(' ')
