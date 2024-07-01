package main

import "fmt"

func main() {
	var n, r uint
	var internalRate uint
	fmt.Scan(&n, &r)

	if n >= 10 {
		internalRate = r
	} else {
		internalRate = r + 100*(10-n)
	}
	fmt.Println(internalRate)

}
