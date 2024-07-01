n = gets.to_i
x = gets.chomp.split.map(&:to_i)
sx = x.sort
lub = sx[n / 2 - 1]
rlb = sx[n / 2]
x.each do |xi|
  if xi <= lub
    puts rlb
  elsif xi >= rlb
    puts lub
  end
end
