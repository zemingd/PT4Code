n = gets.to_i
a = gets.chomp.split(' ')
b = []
if n.odd?
  a.each_with_index do |e, index|
    if index.odd?
	  b << e
    else
      b.unshift e
    end
  end
else
  a.each_with_index do |e, index|
    if index.odd?
	  b.unshift e
    else
      b << e
    end
  end
end  
puts b.join(' ')