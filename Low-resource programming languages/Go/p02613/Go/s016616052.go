package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)


func main() {
	var sc = bufio.NewScanner(os.Stdin)
	sc.Scan()
	N, _ := strconv.Atoi(sc.Text())

	m := make(map[string]int, N)
	for sc.Scan() {
		m[sc.Text()]++
	}

	fmt.Printf("AC x %d\n", m["AC"])
	fmt.Printf("WA x %d\n", m["WA"])
	fmt.Printf("TLE x %d\n", m["TLE"])
	fmt.Printf("RE x %d\n", m["RE"])
}
