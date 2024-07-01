N = gets.chomp.to_i

note = []

N.times{|n|
  s, p = gets.chomp.split(" ")
  p = p.to_i
  note[n] = [s, p, n + 1]
}

def sort_by_of_mine!(book)

  for i in 0..(book.length - 1)
    for j in (book.length - 1).downto(i + 1)
      c = ""
      if (book[j-1][0] <=> book[j][0]) == 1 then
        c = book[j-1]
        book[j-1] = book[j]
        book[j] = c
      end
    end
  end

  for i in 0..(book.length - 1)
    for j in (book.length - 1).downto(i + 1)
      c = ""
      if (book[j-1][1] < book[j][1]) && (book[j-1][0] == book[j][0]) then
        c = book[j-1]
        book[j-1] = book[j]
        book[j] = c
      end
    end
  end
  book
end

book = note.dup

book = sort_by_of_mine!(book)

# p book

# N.times{|n|
#   note[n][2] = book.find_index(note[n]) + 1
# }

# p note

for i in 0...note.length
  puts book[i][2]
end
