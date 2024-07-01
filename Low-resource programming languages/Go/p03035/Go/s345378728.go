package main

import (
	"fmt"
)

func main()  {
	var age, cost int

	fmt.Scan(&age, &cost)

	if 5 >= age {
		fmt.Println("0")
	} else if 12 >= age {
		fmt.Println(cost / 2)
	} else {
		fmt.Println(cost)
	}
}
