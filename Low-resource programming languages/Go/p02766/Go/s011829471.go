package main

import "fmt"

func main() {
	var n, k int
	fmt.Scanf("%d %d", &n, &k)
	counter := 1
	for n/k > 0 {
		counter++
		n /= k
	}
	fmt.Println(counter)
}
