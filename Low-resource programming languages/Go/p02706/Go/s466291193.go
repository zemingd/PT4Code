package main

import "fmt"

func main() {
	var days, homeWorks, cost int

	fmt.Scan(&days, &homeWorks)

	for i := 0; i < homeWorks; i++ {
		var c int
		fmt.Scan(&c)
		cost += c
	}

	if days >= cost {
		fmt.Println(days - cost)
	} else {
		fmt.Println(-1)
	}
}
