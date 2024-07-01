package main

import "fmt"

func main() {
	var N, M int
	fmt.Scan(&N, &M)

	for d := M / N; d > 0; d-- {
		if M%d == 0 {
			if M/d >= N {
				fmt.Println(d)
				return
			}
		}
	}
}
