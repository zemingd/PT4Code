package main

import "fmt"

func main() {
	var n, r int
	fmt.Scan(&n, &r)
	if n >= 10 {
		fmt.Printf(r)
	} else {
		fmt.Printf(r- 100*(10-n))
	}
}