package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	arr := make([]int, n)

	for i := range arr {
		fmt.Scan(&arr[i])
	}

	ApprovedFlg := false
	AllOdd := true

	for _, v := range arr {
		if v%2 == 0 {
			if v%3 == 0 || v%5 == 0 {
				ApprovedFlg = true
			} else {
				ApprovedFlg = false
				break
			}
			AllOdd = false
		}
	}

	switch {
	case ApprovedFlg == true:
		fmt.Println("APPROVED")
	case ApprovedFlg == false:
		fmt.Println("DENIED")
	case AllOdd == true:
		fmt.Println("DENIED")
	}
}