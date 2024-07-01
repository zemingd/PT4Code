n,a,b = gets.split.map(&:to_i)

def function(n,a,b)
  train_fare = caliculat_train_fare(n,a)
  if train_fare > b
    puts b
  else
    puts train_fare
  end
end

def caliculat_train_fare(people, carfare)
  people * carfare
end

puts function(n,a,b)