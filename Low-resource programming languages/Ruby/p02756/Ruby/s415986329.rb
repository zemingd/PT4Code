S = gets.chomp
Q = gets.to_i
queries = []
Q.times do |q|
  queries << gets.split
end
#puts "queries:#{queries}"

str = S
queries.each do |query|
  cmd = query[0].to_i
  #puts "cmd:#{cmd}"
  if (cmd == 1)
    # reverse
    tmp_f = str[0]
    tmp_e = str[-1]
    #puts "tmp_f:[#{tmp_f}],tmp_e:[#{tmp_e}],str:[#{str}]"
    str[0] = tmp_e
    str[-1] = tmp_f
  else
    # cmd 2
    # Fi
    fi = query[1].to_i
    #puts "fi:#{fi}"
    if (fi == 1)
      # fi: 1
      str = query[2] + str
    else
      # fi: 2
      str += query[2]
    end
  end
  #puts "str:#{str}"
end
puts str

