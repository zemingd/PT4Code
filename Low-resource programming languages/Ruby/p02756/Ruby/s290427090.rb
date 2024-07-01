S = gets.chomp
Q = gets.to_i
queries = []
Q.times do |q|
  queries << gets.split
end
#puts "queries:#{queries}"


str = S
reverse_status = false
queries.each do |query|
  cmd = query[0].to_i
  #puts "cmd:#{cmd}"
  if (cmd == 1)
    # reverse
    if reverse_status
      reverse_status = false
    else
      reverse_status = true
    end
  else
    # cmd 2
    # Fi
    fi = query[1].to_i
    #puts "fi:#{fi}"
    if (fi == 1)
      # fi: 1
      if reverse_status
        str =<< query[2]
      else
        str = query[2] + str
      end
    else
      # fi: 2
      if reverse_status
        str = query[2] + str
      else
        str += query[2]
      end
    end
  end
  #puts "str:#{str}"
end
puts str

