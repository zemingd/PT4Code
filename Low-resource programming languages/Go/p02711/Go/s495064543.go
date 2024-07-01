package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	ret := "No"
	if N%10 == 7 || (N-(N%10))%100 == 7 || int(N/100) == 7 {
		ret = "Yes"
	}

	fmt.Println(ret)
}
