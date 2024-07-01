package main

import "fmt"

func main() {

	var a, b int
	fmt.Scan(&a, &b)

	aResult := -1
	bResult := -1
	cResult := -1
	for i := 0; i <= a; i++ {
		for j := 0; j <= a-i; j++ {
			for k := 0; k <= a-j; k++ {
				if 10000*i+5000*j+1000*k == b && i+j+k == a {
					aResult = i
					bResult = j
					cResult = k
				}
			}
		}
	}
	fmt.Println(aResult, bResult, cResult)
}
