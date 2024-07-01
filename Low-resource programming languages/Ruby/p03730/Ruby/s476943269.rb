a,b,c = gets.split.map(&:to_i)
i = a
rest = []
loop{
  rest << i % b
  if rest.uniq.length != rest.length
    puts rest.include?(c) ? "YES" : "NO"
     break
  end
  i += a
}