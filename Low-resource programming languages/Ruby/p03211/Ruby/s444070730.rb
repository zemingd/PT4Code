  n=9e9
  gets
  $_.gsub!(/.(..)/){n=[(753-$&.to_i).abs,n].min
  $1}while$_[3]
  p n