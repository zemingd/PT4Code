Program = Struct.new(:s, :t, :c)

N, C = gets.split.map(&:to_i)
programs = Array.new(N) do
  s, t, c = gets.split.map(&:to_i)
  Program.new(s, t, c)
end
programs.sort_by!{|x| [x.t, x.s, x.c]}

machines = [0]
programs.each do |program|
  i = machines.map.with_index
              .select{|x, i| x <= program.s - 1}
              .map{|x, i| i}
              .min
  if i.nil?
    machines << program.t
  else
    machines[i] = program.t
  end
end
puts machines.size