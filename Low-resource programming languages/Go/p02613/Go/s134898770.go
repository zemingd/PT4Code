package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	var n int
	fmt.Scan(&n)
	m := make(map[string]int)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := 0; i < n; i++ {
		sc.Scan()
		var s string
		s = sc.Text()
		m[s]++
	}
	fmt.Printf("AC x %d\n", m["AC"])
	fmt.Printf("WA x %d\n", m["WA"])
	fmt.Printf("TLE x %d\n", m["TLE"])
	fmt.Printf("RE x %d\n", m["RE"])
}
