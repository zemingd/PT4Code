package main

import (
	"fmt"
	"strconv"
)

func main() {
	var K, X int
	fmt.Scan(&K, &X)

	ans := ""
	for i := 0; i < K-1; i++ {
		ans += strconv.Itoa(X - K + 1 + i)
		ans += " "
	}
	ans += strconv.Itoa(X) + " "
	for i := 0; i < K-1; i++ {
		ans += strconv.Itoa(X + i + 1)
		ans += " "
	}

	fmt.Println(ans)
}
