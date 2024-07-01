while input = gets
  komozi = input.downcase
  allarufa = ('a'..'z').to_a
  arufa = Array.new(26,0)

  for i in 0..25 do
    arufa[i] = komozi.count(allarufa[i])
    puts "#{allarufa[i]}: #{arufa[i]}"
  end
end


