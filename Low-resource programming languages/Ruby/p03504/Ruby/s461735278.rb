Program = Struct.new(:s, :t, :c)

N, C = gets.split.map(&:to_i)
programs = Array.new(N) do
  s, t, c = gets.split.map(&:to_i)
  Program.new(s, t, c)
end
programs.sort_by!{|x| [x.t, x.s, x.c]}

machines = [0]
programs.each do |program|
  i = nil
  machines.each.with_index do |t, j|
    if t <= program.s - 1
      i = j
      break
    end
  end
  
  if i.nil?
    machines << program.t
  else
    machines[i] = program.t
  end
  machines.sort!
end
puts machines.size