  n = gets.split().map(&:to_i)
  t, a = gets.split().map(&:to_i)
  h = gets.split().map(&:to_i)
  n = n.size
  w=[]
  h.each do |i|
    w<<(a.abs - (t - i*0.006).abs).abs.to_i
  end
  p w.index(w.min)+1