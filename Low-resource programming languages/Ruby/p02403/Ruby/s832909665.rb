while line=gets
(h,w)=line.split().map(&:to_i)
  h.times do |y| 
    s=""
    w.times do |x| 
      s+="#"
    end
    puts s
  end
  puts
end