package main

import "fmt"

func main() {
	var n,m int
	fmt.Scan(&n,&m)

	// (0,0) (1,2)
	// (0,0) (2,1)
	if (n+m)%3 != 0 {
		fmt.Println(0)
	}

}

