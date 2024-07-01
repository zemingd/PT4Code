def main()
  a,b,c = gets.split
  if (a+b+c).to_i >= 22
    puts 'bust'
  else
    puts 'win'
  end
end
main()