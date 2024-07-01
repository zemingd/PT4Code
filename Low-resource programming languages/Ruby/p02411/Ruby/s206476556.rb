while l=gets and l!="-1 -1 -1\n"
  c,k,r=l.split(' ').map(&:to_i)
  if [c,k].include?(-1)
    puts 'F'
  else
    puts (case c+k
          when (80..100); 'A'
          when (65..79);  'B'
          when (50..64);  'C'
          when (30..49)
            r>=50 ? 'C' : 'D'
          else
            'F'
          end)
  end
end