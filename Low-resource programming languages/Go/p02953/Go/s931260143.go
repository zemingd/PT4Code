package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	ar := make([]int, n)
	for i := range ar {
		fmt.Scan(&ar[i])
	}
	t := ar[0] - 1
	for _, v := range ar {
		if t == v {
			continue
		}
		if t < v {
			t = v - 1
			continue
		}
		fmt.Println("No")
		return
	}
	fmt.Println("Yes")
}
