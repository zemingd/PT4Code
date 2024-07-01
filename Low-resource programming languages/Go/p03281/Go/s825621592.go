package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	result := 0

	for i := 1; i <= n; i++ {
		tmp := 0
		if i%2 == 1 {
			for j := 1; j <= i; j++ {
				if i%j == 0 {
					tmp = tmp + 1
				}
			}
			if tmp == 8 {
				result = result + 1
			}
		}
	}
	fmt.Println(result)
}
