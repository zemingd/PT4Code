package main

import "fmt"

func main() {
	var A, P, pie int
	fmt.Scan(&A, &P)

	pie = 3*A + P
	if pie%2 == 0 { //even
		fmt.Println(pie / 2)
	} else { //odd
		fmt.Println(pie / 2)
	}

}
