def lscan; gets.split.map(&:to_i); end

gets
li = lscan

cnt = 0
li.each_cons(3) do |l|
  mx = l.max
  mi = l.min
  if (mx == l[0] || mx == l[2]) && (mi == l[0] || mi == l[2])
    cnt += 1
  end
end

p cnt