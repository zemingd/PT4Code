s = gets.chomp

while s != ''
  # eraserにマッチする⇒削除
  if s.match(/^eraser/)
    s.sub!(/^eraser/, '')
    next
  end
  # eraseにマッチする⇒削除
  if s.match(/^erase/)
    s.sub!(/^erase/, '')
    next
  end
  # dreamer[^a]にマッチする⇒削除
  if s.match(/^dreamer[^a]/)
    s.sub!(/^dreamer/, '')
    next
  end
  # dreamにマッチする⇒削除
  if s.match(/^dream/)
    s.sub!(/^dream/, '')
    next
  end
  print 'NO'
  exit
end
print 'YES'