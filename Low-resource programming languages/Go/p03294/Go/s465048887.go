package main

import "fmt"

var m map[int]int

func main() {
	var N, r int
	fmt.Scan(&N)
	arr := make([]int, N)
	for i := range arr {
		fmt.Scan(&arr[i])
	}
	w := arr[0]
	for i := 1; i < N; i++ {
		w = lcm(w, arr[i])
	}
	t := w - 1
	for i := 0; i < N; i++ {
		r += t % arr[i]
	}
	fmt.Println(r)

}
func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func lcm(a, b int) int {
	return a * b / gcd(a, b)
}