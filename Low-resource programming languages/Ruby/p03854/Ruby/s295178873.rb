s = gets.chomp

# eraserにマッチする⇒削除
if s.match(/^(eraser|erase|dreamer|dream)*$/)
  print 'YES'
else
  print 'NO'
end