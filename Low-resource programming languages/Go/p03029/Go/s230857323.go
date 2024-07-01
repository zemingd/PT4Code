package main

import (
	"fmt"
)

func main() {
	var (
		a int
		p int
		ans int
	)
	fmt.Scan(&a, &p)
	ans = (a*3 + p)/2
	fmt.Println(ans)
}
