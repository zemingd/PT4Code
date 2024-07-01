loop { gets!="0\n" or exit; p $_.chars.map(&:to_i).sum }
