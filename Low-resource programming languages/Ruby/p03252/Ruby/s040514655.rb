ss = gets.chomp.split(//)
ts = gets.chomp.split(//)

h = {}
ss.zip(ts).each do |s, t|
  if h[t] && h[t] != s
    puts 'No'
    # puts h
    exit
  end
  h[t] = s
end

puts 'Yes'
