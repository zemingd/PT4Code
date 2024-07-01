n = gets.to_i
h = {}
gets.split.map(&:to_i).each do |num|
  if num < 400
    h[400]  =h[400].to_i + 1
  elsif num < 800
    h[800]  =h[800].to_i + 1
  elsif num < 1200
    h[1200]  =h[1200].to_i + 1
  elsif num < 1600
    h[1600]  =h[1600].to_i + 1
  elsif num < 800
    h[2000]  =h[2000].to_i + 1
  elsif num < 2400
    h[2400]  =h[2400].to_i + 1
  elsif num < 2800
    h[2800]  =h[2800].to_i + 1
  elsif num < 3200
    h[3200]  =h[3200].to_i + 1
  else
    h[9999]  =h[9999].to_i + 1
  end
end

c = (h.keys - [9999]).size
c = [c + h[9999], 8].min if h[9999].to_i > 0
puts c