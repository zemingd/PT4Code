package main

import (
    "fmt"
)


func main() {
	var n, a, b, surplus, times int
	fmt.Scan(&n, &a, &b)

	surplus = n % (a+b)
	times = n / (a+b)
	if a == 0 {
		fmt.Println(0);
	} else if a > surplus {
		fmt.Println(surplus + a*times)
	} else {
		fmt.Println(a*times + a)
	}
}