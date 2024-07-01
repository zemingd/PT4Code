package main

import "fmt"

func main() {
	var n int
	var flg bool
	fmt.Scanf("%d", &n)
	flg = false

	for i := 0; i <= 9; i++ {
		for j := 0; j <= 9; j++ {
			if i*j == n {
				flg = true
			}
		}
	}

	if flg == true {
		fmt.Printf("Yes")
	} else {
		fmt.Printf("No")
	}
}