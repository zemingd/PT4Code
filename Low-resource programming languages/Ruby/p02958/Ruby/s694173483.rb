N = gets.chomp.to_i
p = gets.chomp.split.map(&:to_i)

[*0..N - 1].combination(2) { |i, j|
  a = p.map.with_index { |n, index|
    if index == i
      p[j]
    elsif index == j
      p[i]
    else
      p[index]
    end
  }
  if a == p.sort
    puts "YES"
    exit
  end
}

if p == [*1..N]
  puts "YES"
else
  puts "NO"
end
