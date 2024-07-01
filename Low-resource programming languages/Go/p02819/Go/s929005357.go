package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}



func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

var primes = []int{2}
var primeCursor = 3
// IsPrime judge the number is prime or not
func IsPrime(x int) bool {
	if primeCursor > x {
		for _, p := range primes {
			if p == x {
				return true
			}
		}
		return false
	}

	i := primeCursor
	prime := false
	for ; i <= x ; i++ {
		primeCursor = x + 1
		prime = isPrime(i)
		if prime {
			primes = append(primes, i)
		}
	}
	return prime
}

func isPrime(x int) bool {
	for _, p := range primes {
		if x % p == 0 {
			return false
		}
	}
	return true
}

func main() {
	x := nextInt()

	for i := 2; i < x; i++ {
		IsPrime(i)
	}

	c := x
	for !IsPrime(c) {
		c++
	}
	fmt.Printf("%d", c)
}
