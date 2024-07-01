def fin(ok) 
  puts ok.eql?(true) ? 'Yes' : 'No' 
  exit
end

pre = ''
ct = 0
gets.strip.chars do |c|
  if c.eql?(pre)
    ct += 1 
    fin(true) if ct >= 3
  else
    ct = 1
    pre = c
  end 
end
fin(false)
