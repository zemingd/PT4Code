N = gets.chomp.to_i

note = []

N.times{|n|
  s, p = gets.chomp.split(" ")
  p = p.to_i
  note[n] = [s, p, n + 1]
}

note.sort_by!{|n| n[1]}.reverse!.sort_by!{|n| n[0]}

note.each{|n|
  puts n[2]
}
