s=$<.read.gsub /^\.*|#*$/,''
p [s.count('.'),s.count('#')].min