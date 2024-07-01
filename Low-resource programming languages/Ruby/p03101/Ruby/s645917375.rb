h,w = $stdin.gets.split.map(&:to_i)
hl,wl = $stdin.gets.split.map(&:to_i)
puts h*wl+hl*w-hl*wl