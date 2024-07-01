n=gets.to_i
s=gets.chomp.split("")
whiteIdx=s.index(".")
sliced=s.slice(whiteIdx,s.size-whiteIdx)
if sliced.count(".")>sliced.count("#")
  frontSliced=s.slice(0,whiteIdx+1)
  puts sliced.count("#")+frontSliced.count("#")
else
  puts sliced.count(".")
end
