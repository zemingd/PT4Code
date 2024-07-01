package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc *bufio.Scanner = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}()

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func findPrime(x int) int {
	for {
		divided := true
		mx := int(math.Sqrt(float64(x)))
		for i := 2; i < mx; i++ {
			if x%i == 0 {
				divided = false
				break
			}
		}
		if divided {
			return x
		}
		x++
	}
}

func main() {
	x := nextInt()
	prime := findPrime(x)
	fmt.Println(prime)
}
