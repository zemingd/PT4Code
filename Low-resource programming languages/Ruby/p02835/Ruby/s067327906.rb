def main()
  a,b,c = gets.split.map(&:to_i)
  if (a+b+c).to_i >= 22
    puts 'bust'
  else
    puts 'win'
  end
end
main()
