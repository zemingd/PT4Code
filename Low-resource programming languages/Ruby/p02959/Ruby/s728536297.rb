n = gets.to_i

a = gets.chomp.split(" ").map(&:to_i);

b = gets.chomp.split(" ").map(&:to_i);

c = 0

b.each_with_index do |bb, i|
  yusha_life = bb - a[i]
  tekinokazu = a[i] - bb

  if yusha_life <= 0 
    c += bb 
    next
  end

  if tekinokazu <= 0 && a[i+1] != nil
    c += a[i]
    a[i+1] - yusha_life
    if a[i+1] - yusha_life <= 0
      c += a[i+1]
    else
      c += yusha_life
    end
  end
end

puts c