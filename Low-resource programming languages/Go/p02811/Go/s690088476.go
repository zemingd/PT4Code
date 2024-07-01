package main

import (
	"fmt"
)

func main() {

	// 読み込み数取得
	var k, x int
	fmt.Scan(&k, &x)

	if 500*k >= x {
		fmt.Printf("Yes\n")
	} else {
		fmt.Printf("No\n")
	}

}
