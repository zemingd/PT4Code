package main

import (
	"fmt"
)

func main() {
	var a,b,c, k int
	fmt.Scan(&a,&b,&c,&k)


	for i := 0 ; i < k; i++ {
		if a >= b {
			b = b * 2
			continue
		}
		if b >= c {
			c = c *2
			continue
		}

	}
	if a < b && b < c{
		fmt.Println("Yes")
		return
	}

	fmt.Println("No")
	return

}
