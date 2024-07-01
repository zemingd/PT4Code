package main

import ( 
		"fmt"
		"flag"
 )

func min(a, b int) int {
		if a < b {
				return a
		}
		return b
}

func main() {
		var N, A, B int
		fmt.Scan(&N, &A, &B)
		flag.Parse()
		fmt.Println(min(B, N*A))
}