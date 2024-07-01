X = ARGF.gets.chomp.split.collect {|el| el.to_i}

ee = 1
X.each do |xi|
  if ee != xi
    puts ee
    break
  end
  ee += 1
end
