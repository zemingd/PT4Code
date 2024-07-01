package main

import (
	"fmt"
)

func main() {
	var d, t, s int
	fmt.Scanf("%d %d %d", &d, &t, &s)

	if d/s <= t {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
