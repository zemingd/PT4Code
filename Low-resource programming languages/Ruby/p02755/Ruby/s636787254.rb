a, b = gets.split.map(&:to_i)
done = false
for x in 0..1100 do
  if (x * 0.08).to_i == a && (x * 0.1).to_i == b
    puts x
    done = true
    break
  end
end
puts -1 if !done
