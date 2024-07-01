package main

import (
	"fmt"
)

type ll int64

func main() {

	var K ll
	fmt.Scan(&K)
	var X ll
	fmt.Scan(&X)

	var i ll = 0
	for i = 0 ; i < 2*K - 1 ; i++ {
		fmt.Print(X - K + 1 + i)
		fmt.Print(" ")
	}


}
