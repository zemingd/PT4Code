package main

import "fmt"

func main() {
	var K, X int
	fmt.Scanf("%d %d", &K, &X)

	start := X - K + 1
	max := X + K - 1
	flag := false
	for i := start; i <= max; i++ {
		if -1000000 <= i && i <= 1000000 {
			if flag {
				fmt.Print(" ")
			} else {
				flag = true
			}
			fmt.Print(i)
		}
	}
}
