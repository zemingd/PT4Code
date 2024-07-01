package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	for i := 0; i < 1<<3; i++ {
		v := int(s[0] - '0')
		for j := 0; j < 3; j++ {
			n := int(s[j+1] - '0')
			if i>>j&1 == 1 {
				n *= -1
			}
			v += n
		}
		if v == 7 {
			for j := 0; j < 3; j++ {
				fmt.Printf("%c", s[j])
				if i>>j&1 == 1 {
					fmt.Printf("-")
				} else {
					fmt.Printf("+")
				}

			}
			fmt.Printf("%c=7\n", s[3])
			return
		}
	}
}
