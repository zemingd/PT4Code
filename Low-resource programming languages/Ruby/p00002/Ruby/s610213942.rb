while d = STDIN.gets
d = d.chomp!.split(/ /)
puts (d[0].to_i+d[1].to_i).to_s.length
end