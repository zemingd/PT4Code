x = gets.chomp.split.map(&:to_i)

x.each.with_index(1) do |xx, ind|
  if xx == 0
    p ind
    exit
  end
end

