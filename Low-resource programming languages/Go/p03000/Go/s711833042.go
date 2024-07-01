package main

import (
	"fmt"
)

func main() {
	var n, x, l, ad int
	an := 1
	fmt.Scanln(&n, &x)
	for i := 0; i < n; i++ {
		fmt.Scan(&l)
		ad += l
		if ad <= x {
			an += 1
		}
	}
	fmt.Println(an)

}