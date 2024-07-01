package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const mod = 1000000007
var sc = bufio.NewScanner(os.Stdin)

func next() string {
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

func main() {
	sc.Split(bufio.ScanWords)

	x := nextInt()
	for {
		if isPrime(x) {
			fmt.Println(x)
			return
		}
		x++
	}
}

func isPrime(x int) bool {
	for i := 2; i*i <= x; i++ {
		if x % i == 0 {
			return false
		}
	}
	return true
}