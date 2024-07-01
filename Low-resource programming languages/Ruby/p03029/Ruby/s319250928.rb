function main()
  a,p = map(x -> parse(Int, x), split(readline(), " "))
  print(div(a * 3 + p, 2))
end

main()