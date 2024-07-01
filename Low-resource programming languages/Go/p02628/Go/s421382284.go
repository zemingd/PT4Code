package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	ps := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&ps[i])
	}

	sort.Ints(ps)


	fmt.Println(Sum(ps[0:k]...))

}


func Sum(arr ...int) (sum int) {
	for _, x := range arr {
		sum += x
	}
	return
}
