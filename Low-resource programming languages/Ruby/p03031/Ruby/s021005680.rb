@n, m = gets.split(" ").map(&:to_i)
@lights = []
m.times do
  @lights.push(gets.split(" ").map(&:to_i))
end

@ps = gets.split(" ").map(&:to_i)

@lights.each do |li|
  li.shift(1)
end

@switches = Array.new(@n, false)

@sum = 0

def recursive_dfs(switch_num, bool)
  if switch_num >= 0
    @switches[switch_num] = bool
  end
  if switch_num >= @n - 1
    judge = true
    switch_sum = 0
    @lights.each_with_index do |light, index1|
      light.each_with_index do |switch, index2|
        if @switches[switch - 1] == true
          switch_sum += 1
        end
      end
      if @ps[index1].even? != switch_sum.even?
        judge = false
      end
    end
    if judge == true
      @sum += 1
    end
    return
  end
  switch_num += 1
  2.times do |index|
    if index == 0
      recursive_dfs(switch_num, true)
    elsif index == 1
      recursive_dfs(switch_num, false)
    end  
  end
end

recursive_dfs(-1, false)
puts @sum