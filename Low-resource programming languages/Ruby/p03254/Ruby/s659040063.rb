input = STDIN.read.split("\n").map{|l| l.split(" ").map{|i| i.to_i}}
drops = input[0][1]
requires = input[1]
sorted_requires = requires.sort

funs = 0
sorted_requires.each do |r|
  if drops < r
    drops = 0
    break
  end

  drops = drops - r
  funs = funs + 1
end

if drops != 0
  funs = funs - 1
end

puts funs
