input =  gets.chomp
input = input.split(" ")
array = []
input.each do |v|
  if v =~ /[0-9]/
    array.push(v.to_i)
  elsif v =~ /\+|\-|\*/
    v2 = array.pop
    v1 = array.pop
    case v
    when "+"
      array.push(v1 + v2)
    when "-"
      array.push(v1 - v2)
    when "*"
      array.push(v1 * v2)
    end
  end
end
puts array
