// https://qiita.com/drken/items/fd4e5e3630d0f5859067
package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)

	m := make(map[int]bool, N)

	var d int
	for i := 0; i < N; i++ {
		fmt.Scan(&d)
		m[d] = true
	}
	fmt.Println(len(m))
}
