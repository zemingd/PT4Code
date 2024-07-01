package main

import "fmt"

func main() {
	var n, r int
	fmt.Scan(&n, &r)

	if n < 10 {
		fmt.Println(100*(10-n) + r)
	} else {
		fmt.Println(r)
	}

}
