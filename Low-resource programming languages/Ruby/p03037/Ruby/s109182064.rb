$memo = {}
def nextbit(r, l)
  return $memo["#{r},#{l}"] if $memo["#{r},#{l}"]
  $memo["#{r},#{l}"] = ((2 ** (r-l+1)) - 1) << (l-1)
end

input = STDIN.gets
splited = input.split(" ")

n = splited[0].to_i
m = splited[1].to_i

bit = (2 ** n) - 1
memo = {}
STDIN.each_line do |input|
  splited = input.split(" ")
  l = splited[0].to_i
  r = splited[1].to_i

  bit &= nextbit(r, l)
end

puts bit.to_s(2).count("1")