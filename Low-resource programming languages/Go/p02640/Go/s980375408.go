package main

import "fmt"

func main() {
	arr := make([]int, 2)
	for i := 0; i < 2; i++ {

		if _, err := fmt.Scan(&arr[i]); err != nil {
			panic(err)
		}
	}

	if arr[1]%2 == 0 {

		if arr[1] >= 2*arr[0] || arr[1] <= arr[0]*4 {

			fmt.Print("Yes")
		} else {
			fmt.Print("No")
		}

	} else {
		fmt.Print("No")
	}

}
