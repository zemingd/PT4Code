io = STDIN
n=io.gets.to_i
x=io.gets.split.map(&:to_i)
xs=x.sort
x.each do |a|
  if a<=xs[n/2-1]
    puts xs[n/2]
  elsif xs[n/2]<=a
    puts xs[n/2-1]
  end
end
