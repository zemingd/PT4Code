while l=gets and l!="0 0\n"
  h,w=l.split(' ').map(&:to_i)
  w.times{ puts '#'*w }
  puts "\n"
end