gets.chomp.to_i

gets.chomp.split(' ').map{|i|
  ii = i.to_i
  if ii % 2 == 0
    if (ii % 3 != 0) && (ii % 5 != 0)
      puts 'DENIED'
      exit 0
    end
  end
}

if approved
  puts 'APPROVED'
end
