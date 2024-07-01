package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	arr := make([]int, n)

	for i := range arr {
		fmt.Scan(&arr[i])
	}

	var ApprovedFlg bool
	for _, v := range arr {
		if v%2 == 0 {
			if v%3 == 0 || v%5 == 0 {
				ApprovedFlg = true
			} else {
				ApprovedFlg = false
				break
			}
		}
	}

	if ApprovedFlg == true {
		fmt.Println("APPROVED")
	} else {
		fmt.Println("DENIED")
	}
}
