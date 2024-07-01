package main

import "fmt"

func main() {
	in := make([]int, 3)
	for i := range in {
		fmt.Scan(&in[i])
	}
	fmt.Println(rgb(in))
}

func rgb(in []int) string {
	s := 100*in[0] + 10*in[1] + in[2]
	if s%4 == 0 {
		return "YES"
	}
	return "NO"
}
