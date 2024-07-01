package main

import "fmt"

func main() {
	var A, B int
	fmt.Scanf("%d %d", &A, &B)

	tap := 1 //必要なタップ数．
	if A >= B {
		fmt.Println(1)
	} else {
		for {
			if A < B {
				tap++
				B -= A - 1
			} else {
				break
			}
		}

		fmt.Println(tap)
	}

}
