h, w = gets.split.map(&:to_i)
rows = h.times.map{gets.chomp}
rows.select! do |row|
  if row == ("." * w)
    false
  else
    true
  end
end
rows[0].length.times do |n|
  includeBlack = false
  rows.each do |row|
    if row[n] == "#"
      includeBlack = true
    end
  end
  if !includeBlack
    rows.each do |row|
      row[n] = "/"
    end
  end
end
rows.map do |row|
  puts row.tr("/", "")
end