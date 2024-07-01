line = gets.split('')

case line[0]
when "S" then
  case line[1]
  when "S" then
    case line[2]
    when "S" then
      a = 0
    when "R" then
      a = 1
    end
  when "R" then
    case line[2]
    when "S" then
      a = 1
    when "R" then
      a = 2
    end
  end

when "R" then
  case line[1]
  when "S" then
    case line[2]
    when "S" then
      a = 1
    when "R" then
      a = 1
    end
  when "R" then
    case line[2]
    when "S" then
      a = 2
    when "R" then
      a = 3
    end
  end
end

p a