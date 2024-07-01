package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var stdInScanner = bufio.NewScanner(os.Stdin)

func nextInt() int {
	stdInScanner.Scan()
	i, _ := strconv.Atoi(stdInScanner.Text())
	return i
}

func gcd(m, n uint64) uint64 {
	if (m % n) == 0 {
		return n
	}
	return gcd(n, m%n)
}

func main() {
	stdInScanner.Split(bufio.ScanWords)

	K := nextInt()

	anser := uint64(0)
	for a := uint64(1); a <= uint64(K); a++ {
		for b := uint64(1); b <= uint64(K); b++ {
			for c := uint64(1); c <= uint64(K); c++ {
				temp := gcd(a, b)
				anser += gcd(temp, c)
			}
		}
	}
	fmt.Println(anser)
}
