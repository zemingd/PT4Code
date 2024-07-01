package main

import "fmt"
import "os"

var N int
var a []int
var touched map[int]bool

func main() {
	fmt.Scan(&N)
	a = make([]int, N+1)
	tmp := 0
	for i := 0; i < N; i++ {
		fmt.Scan(&tmp)
		a[i+1] = tmp
	}
	num := 0
	button := 1
	touched = make(map[int]bool)
	for a[button] != 2 {
		button = a[button]
		if _, ok := touched[button]; ok {
			fmt.Println("-1")
			os.Exit(0)
		}
		touched[button] = true
		num += 1
	}
	fmt.Println(num + 1)
}
