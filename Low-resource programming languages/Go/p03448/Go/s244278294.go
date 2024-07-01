package main

import (
	"fmt"
)

func main() {
	var coin_500 int
	var coin_100 int
	var coin_50 int
	var amount int

	fmt.Scanf("%d", &coin_500)
	fmt.Scanf("%d", &coin_100)
	fmt.Scanf("%d", &coin_50)
	fmt.Scanf("%d", &amount)

	var counter int
	for i := 0; i <= coin_500; i++ {
		for j := 0; j <= coin_100; j++ {
			for k := 0; k <= coin_50; k++ {
				result := 500*i + 100*j + 50*k
				if result == amount { counter++ }
			}
		}
	}
	fmt.Printf("%d\n", counter)
}