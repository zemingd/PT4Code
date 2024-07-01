package main

import "fmt"

func main() {
	var L, R int
	fmt.Scanf("%d %d", &L, &R)

	lmod := L % 2019
	if lmod > R%2019 || (R-L) > 2019 {
		fmt.Println(0)
		return
	}

	fmt.Println(lmod * (lmod + 1) % 2019)
}
