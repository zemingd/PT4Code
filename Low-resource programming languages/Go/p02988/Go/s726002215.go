package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	ar := make([]int, n)
	for i := range ar {
		fmt.Scan(&ar[i])
	}
	sum := 0
	for i := 0; i < n-2; i++ {
		if ar[i] < ar[i+1] && ar[i+1] < ar[i+2] {
			sum++
		}
		if ar[i] > ar[i+1] && ar[i+1] > ar[i+2] {
			sum++
		}
	}
	fmt.Println(sum)
}
