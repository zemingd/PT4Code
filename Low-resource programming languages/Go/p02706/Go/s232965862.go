package main

import (
	"fmt"
)

func main() {
	var n, m, a int64
	fmt.Scan(&n, &m)
	ret := int64(0)
	for i := int64(0); i < m; i++ {
		fmt.Scan(&a)
		ret += a
	}
	result := int64(0)
	if ret > n {
		result = int64(-1)
	} else {
		result = n - ret
	}
	fmt.Println(result)
}
