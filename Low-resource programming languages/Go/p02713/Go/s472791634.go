package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	const initialBufSize = 4096
	const maxBufSize = 1000000
	scanner.Buffer(make([]byte, initialBufSize), maxBufSize)
	scanner.Split(bufio.ScanWords)
	var K int64
	scanner.Scan()
	K, _ = strconv.ParseInt(scanner.Text(), 10, 64)
	fmt.Println(solve(K))
}
func solve(K int64) int {
	sum := 0
	for a := 1; a <= int(K); a++ {
		for b := 1; b <= int(K); b++ {
			for c := 1; c <= int(K); c++ {
				sum += lib_Gcd(a, b, c)
			}
		}
	}
	return sum
}
func lib_Gcd(a, b int, values ...int) int {
	g := lib_gcd(a, b)
	for _, v := range values {
		g = lib_gcd(g, v)
	}
	return g
}
func lib_gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return lib_gcd(b, a%b)
}