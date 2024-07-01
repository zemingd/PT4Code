while d = STDIN.gets
d.split(/ /)
d[0] = d[0].to_i
d[1] = d[1].to_i
puts (d[0]+d[1]).to_s.length
end