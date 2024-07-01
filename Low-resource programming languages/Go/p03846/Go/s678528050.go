package main

import (
	"fmt"
	"os"
)

const MOD int = 1000000007

func main() {

	var n int

	fmt.Scan(&n)

	m := map[string]int{}
	input := make([]string, n)

	for i := 0; i < n; i++ {
		fmt.Scan(&input[i])
		m[input[i]] += 1
	}

	for key, value := range m {
		if key == "0" {
			if value != 1 {
				fmt.Println("0")
				os.Exit(0)
			}
		} else {
			if value != 2 {
				fmt.Println("0")
				os.Exit(0)
			}
		}
	}

	l := n / 2
	res := 1
	for i := 0; i < l; i++ {
		res = (res * 2) % MOD
	}

	fmt.Println(res)
}
