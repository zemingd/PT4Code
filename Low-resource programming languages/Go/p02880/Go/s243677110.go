package main

import (
	"fmt"
)

// main is ...
func main() {
	var a int
	fmt.Scan(&a)

	// var listA = make([]int, 10)
	// listA := []int{1,2,3,4,5,6,7,8,9}
	listA := []int{9, 8, 7, 6, 5, 4, 3, 2, 1}

	for _, value := range listA {
		divide := a / value
		if 9 < divide {
			continue
		}
		mod := a % value

		// if 0 < mod && mod < 10 {
		// 	fmt.Print("Yes")
		// 	return
		// }
		if 0 == mod {
			fmt.Print("Yes")
			return
		}
		for _, value2 := range listA {
			multiple := value * value2
			if a == multiple {
				fmt.Print("Yes")
				return
			}
		}

	}

	fmt.Print("No")
}

