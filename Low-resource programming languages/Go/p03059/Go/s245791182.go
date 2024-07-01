package main

import "fmt"

// import "fmt"
func readline(n int) []int {
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	return a
}

func main() {
	v := readline(3)
	a := v[0]
	b := v[1]
	t := v[2]
	res := (t / a) * b
	fmt.Println(res)
}
