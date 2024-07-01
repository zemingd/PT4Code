def code_run
  until ( iM,iF,iR=$stdin.gets.split.map(&:to_i) ) == [-1,-1,-1] do
    puts jadge(iM,iF,iR)
  end
end
def jadge(m,f,r)
  return "F" if m<0 or f<0
  case m+f
  when (80..100); return "A"
  when (65..79); return "B"
  when (50..64); return "C"
  when (30..49); return r>=50 ? "C" : "D"
  when (0..29); return "F"
  end
  return "Z"
end
code_run
