while (s=gets) != "0 0" do
	puts s.split.map(&:to_i).reverse.join " "
end