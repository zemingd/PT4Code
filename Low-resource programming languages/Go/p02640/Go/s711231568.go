package main

import "fmt"

func main() {
	var x, y int
	fmt.Scan(&x, &y)

	//a := y / 2
	//b := y / 4

	count := 0
	for i := 0; i < x; i++ {
		if y%4 == 0 {
			count += y / 4
			continue
		}
		if y%2 == 0 {
			count += y / 2
			continue
		}
	}
	if count/2 == x || count == x {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}