package main

import (
	"fmt"
)

func main() {
	var n int
	var y int
	fmt.Scan(&n)
	fmt.Scan(&y)

	c10000 := -1
	c5000 := -1
	c1000 := -1
LOOP:
	for i := y / 10000; i >= 0; i-- {
		tmp := y - 10000*i
		for j := tmp / 5000; j >= 0; j-- {
			if i*10000+j*5000+(n-i-j)*1000 == y {
				c10000 = i
				c5000 = j
				c1000 = n - i - j
				break LOOP
			}
		}
	}

	fmt.Printf("%d %d %d\n", c10000, c5000, c1000)
}
