package main

import (
	"fmt"
	"strconv"
)

func main() {
	var a, b, k string
	fmt.Scan(&a, &b, &k)
	A, _ := strconv.ParseInt(a, 10, 64)
	B, _ := strconv.ParseInt(b, 10, 64)
	K, _ := strconv.ParseInt(k, 10, 64)

	if K >= A+B {
		fmt.Println(0, 0)
	} else if K >= A {
		fmt.Println(0, B-(K-A))
	} else {
		fmt.Println(A-K, B)
	}

}
