while ab = STDIN.gets
  x = ab.split(" ")
  menseki = x[0].to_i * x[1].to_i
  syui = x[0].to_i*2 + x[1].to_i*2
  puts "#{menseki} #{syui}"
end