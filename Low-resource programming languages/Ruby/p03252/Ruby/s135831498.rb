ss = gets.chomp.split(//)
ts = gets.chomp.split(//)

h = {}
hs = {}

ss.zip(ts).each do |s, t|
  if h[t] && h[t] != s
    puts 'No'
    # puts h
    exit
  end
  h[t] = s
  hs[s] = s
end

if hs.count == 26
  puts 'No'
else
  puts 'Yes'
end
