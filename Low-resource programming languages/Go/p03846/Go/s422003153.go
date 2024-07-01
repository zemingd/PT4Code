package main

import (
	"fmt"
	"math"
	"os"
)

func main() {

	var n int

	fmt.Scan(&n)

	m := map[string]int{}

	sa := make([]string, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&sa[i])
		m[sa[i]] += 1
	}

	if m["0"] > 1 {
		fmt.Println("0")
		os.Exit(0)
	}
	for _, v := range m {
		if v > 2 {
			fmt.Println("0")
			os.Exit(0)
		}
	}

	num := 0
	if m["0"] != 0 {
		num = int(math.Pow(2.0, float64(len(m)-1)))
	} else {
		num = int((math.Pow(2.0, float64(len(m)))))
	}

	fmt.Println(num % int(math.Pow(10.0, 9.0)+7))
}
