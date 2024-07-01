package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	As := make([]int, N)
	for i := range As {
		fmt.Scan(&As[i])
	}
	
	approved := true
	for _, A := range As {
		if A % 2 == 0 {
			if !(A % 3 == 0 || A % 5 == 0) {
				approved = false
				break
			}
		}
	}
	
	if approved {
		fmt.Println("APPROVED")
	} else {
		fmt.Println("DENIED")
	}
}
