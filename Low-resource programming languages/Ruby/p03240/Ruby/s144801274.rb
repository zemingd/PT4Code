n = gets.to_s.to_i
x,y,h =  Array.new(n){ gets.to_s.split.map{|t| t.to_i } }.sort_by{|_,_,h| -h }.transpose

0.upto(100) do |c_x|
  0.upto(100) do |c_y|
    
    t = nil
    ok = true
    n.times do |i|
      
      t ||= h[i] + (x[i]-c_x).abs + (y[i]-c_y).abs
      tmp = t - (x[i]-c_x).abs - (y[i]-c_y).abs
      tmp = 0 if tmp < 0
      
      if h[i] != tmp
        ok = false
        break
      end
    end
    
    if ok
      puts "#{c_x} #{c_y} #{t}"
      exit
    end
  end
end