package main

import (
	"fmt"
)

func main() {
	var K, X int
	fmt.Scan(&K)
	fmt.Scan(&X)
	res := "No"
	if K*500 >= X {
		res = "Yes"
	}

	fmt.Println(res)
}
