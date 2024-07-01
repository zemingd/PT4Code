package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	wa := a + b

	var ans int
	if wa == 3 {
		ans = 3
	} else if wa == 4 {
		ans = 2
	} else {
		ans = 1
	}

	fmt.Println(ans)
}
