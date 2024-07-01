package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner

func nextStr() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func gcd(a, b int) int {
	if a < b {
		a, b = b, a
	}
	if a%b == 0 {
		return b
	}
	return gcd(b, a%b)
}

func main() {
	sc = bufio.NewScanner(os.Stdin)
	sc.Buffer(make([]byte, 0), 1000000001*3)
	sc.Split(bufio.ScanWords)
	a, b := nextInt(), nextInt()
	gcd := gcd(a, b)

	ans := 1
	gcdCopy := gcd
	for d := 2; d*d <= gcd; d++ {
		if gcdCopy%d != 0 {
			continue
		}
		ans++
		for gcdCopy%d == 0 {
			gcdCopy /= d
		}
	}
	if gcdCopy > 1 {
		ans++
	}
	fmt.Println(ans)
}
