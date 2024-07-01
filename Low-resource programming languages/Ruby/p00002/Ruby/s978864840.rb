while line = gets
   tmp = line.split(/\s+/)
   puts (tmp[0].to_i+tmp[1].to_i).to_s.size
end