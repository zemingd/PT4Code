package main

import (
	"fmt"
)

func main() {

	var N, M int
	fmt.Scan(&N, &M)
	homeworks := 0
	for i := 0; i < M; i++ {
		var homework int
		fmt.Scan(&homework)
		homeworks += homework
	}

	restDay := N - homeworks
	if restDay >= 0 {
		fmt.Println(restDay)
	} else {
		fmt.Println(-1)
	}
}
