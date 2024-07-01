package main

import (
	"fmt"
	"strconv"
)

func main() {
	var N string
	fmt.Scan(&N)

	A, _ := strconv.Atoi(string(N[0]))
	B, _ := strconv.Atoi(string(N[1]))
	C, _ := strconv.Atoi(string(N[2]))
	D, _ := strconv.Atoi(string(N[3]))

	if A+B+C+D == 7 {
		fmt.Printf("%d+%d+%d+%d=7\n", A, B, C, D)
	} else if A+B+C-D == 7 {
		fmt.Printf("%d+%d+%d-%d=7\n", A, B, C, D)
	} else if A+B-C+D == 7 {
		fmt.Printf("%d+%d-%d+%d=7\n", A, B, C, D)
	} else if A+B-C-D == 7 {
		fmt.Printf("%d+%d-%d-%d=7\n", A, B, C, D)
	} else if A-B+C+D == 7 {
		fmt.Printf("%d-%d+%d+%d=7\n", A, B, C, D)
	} else if A-B+C-D == 7 {
		fmt.Printf("%d-%d+%d-%d=7\n", A, B, C, D)
	} else if A-B-C+D == 7 {
		fmt.Printf("%d-%d-%d+%d=7\n", A, B, C, D)
	} else if A-B-C-D == 7 {
		fmt.Printf("%d-%d-%d-%d=7\n", A, B, C, D)
	}
}
