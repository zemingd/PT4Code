package main

import (
	"fmt"
)
func pow(a int,b int) int {
	c := 1
	for i := 0; i < b; i++ {
		c *= a
	}
	return c
}

func main() {
	var d, n int
	fmt.Scan(&d, &n)
	if n == 100 {
		n += 1
	}

	kotae := pow(100, d) * n
	fmt.Println(kotae)
}

