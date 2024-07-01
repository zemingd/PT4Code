def main(str)
  a, b, c = str.split(" ")
  [c, a, b].join(" ")
end

main($stdin.read.chomp)