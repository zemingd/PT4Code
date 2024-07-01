package main

import (
	"fmt"
)

func main() {
	var d, t, s int
	fmt.Scanf("%d %d %d", &d, &t, &s)

	m := float64(d) / float64(s)

	if m <= float64(t) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
