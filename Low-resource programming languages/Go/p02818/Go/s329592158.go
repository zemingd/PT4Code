package main

import "fmt"

func main() {
	var a,b,k int
	fmt.Scan(&a,&b,&k)

	if a - k >= 0 {
		fmt.Println(a-k, b)
	} else if a+b < k {
		fmt.Println(0, 0)
	} else {
		fmt.Println(0, b+a-k)
	}
}

