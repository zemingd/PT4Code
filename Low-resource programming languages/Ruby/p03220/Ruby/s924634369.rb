  n = gets.split().map(&:to_i)
  t, a = gets.split().map(&:to_i)
  h = gets.split().map(&:to_i)
  w=[]
  h.each do |i|
    w<<(a.abs - (t - i).abs).abs.to_i
  end
  p w.index(w.min)+1