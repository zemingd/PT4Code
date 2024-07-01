class NationalBudget
  def initialize(n1, n2)
    @n1 = n1.to_s.split("").reverse
    @n2 = n2.to_s.split("").reverse
  end

  def plus
    max = (@n1.length < @n2.length) ? @n2.length : @n1.length
    up_flag = false
    @answer = []
    max.times do |i|
      temp = 0
      if !up_flag
        temp = @n1[i].to_i + @n2[i].to_i
      else
        temp = @n1[i].to_i + @n2[i].to_i + 1
      end
      up_flag = push_answer(temp)
    end
    @answer.push(1) if up_flag
  end

  def push_answer(n)
    if n >= 10
      @answer.push(n - 10)
      return true
    else
      @answer.push(n)
      return false
    end
  end

  def answer
    plus
    @answer.reverse.join("")
  end
end

n = gets.to_i

n.times do
  n1 = gets.to_i
  n2 = gets.to_i
  obj = NationalBudget.new(n1, n2)
  answer = obj.answer
  if answer.length > 80
    puts 'overflow'
  else
    puts answer
  end
end