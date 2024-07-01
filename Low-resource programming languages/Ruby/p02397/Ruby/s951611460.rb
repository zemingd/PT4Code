while true 
   a,b=gets.split.map &:to_i
   if a=0 && b=0 
      break
   end
   puts ([a,b].sort)
end
