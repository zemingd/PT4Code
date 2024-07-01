package main

import "fmt"

func main() {
	var abcd string
	fmt.Scan(&abcd)

	len := 3
	count := 0
	for bit := 0; bit < (1 << len); bit++ {
		count++
		exp := abcd[0:1]
		eval := int(abcd[0] - '0')
		for i := 0; i < len; i++ {
			literal := abcd[i+1 : i+2]
			value := int(abcd[i+1] - '0')
			if (1 & (bit >> i)) == 1 {
				exp += "+" + literal
				eval += value
			} else {
				exp += "-" + abcd[i+1:i+2]
				eval -= value
			}
		}

		if eval == 7 {
			fmt.Printf("%s=7\n", exp)
			return
		}
	}
}
