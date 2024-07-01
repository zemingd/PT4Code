package main

import (
	"fmt"
	"os"
)

const MOD int = 1000000007

func main() {

	var n int
	var l int

	fmt.Scan(&n)

	m := map[string]int{}
	input := make([]string, n)

	for i := 0; i < n; i++ {
		fmt.Scan(&input[i])
		m[input[i]] += 1
	}

	if m["0"] != 0 {
		//　奇数
		if m["0"] != 1 {
			fmt.Println("0")
			os.Exit(0)
		}
		l = len(m) - 1
	} else {
		// 偶数
		for _, v := range m {
			if v != 2 {
				fmt.Println("0")
				os.Exit(0)
			}
		}
		l = len(m)
	}

	res := 1
	s := 2
	for {
		if l == 0 {
			break
		}
		if (l & 1) == 1 {
			res = (res * s) % MOD
		}
		s = (s * s) % MOD
		l >>= 1
	}
	fmt.Println(res)
}
