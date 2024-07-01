  count = gets.to_i

  numbers = []
  count.times do
    number = gets.to_i
    has = numbers.delete(number)
    numbers << number unless has
  end
  print numbers.size