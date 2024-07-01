package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var cache map[int64]int64

func main() {
	K := nextInt64()
	cache = map[int64]int64{}

	// primes := make([]bool, K+1)
	// primes[1] = true
	// primes[2] = true
	// for i := int64(3); i <= K; i++ {
	// 	primes[i] = true
	// 	for j := int64(2); j*j <= i; j++ {
	// 		if i%j == 0 {
	// 			primes[i] = false
	// 			break
	// 		}
	// 	}
	// }

	sum := int64(0)
	for a := int64(1); a <= K; a++ {
		// if primes[a] {
		// 	fmt.Println(a, K*K)
		// 	sum += K * K
		// 	continue
		// }
		for b := int64(1); b <= K; b++ {
			// if primes[b] {
			// 	fmt.Println(a, b, K)
			// 	sum += K
			// 	continue
			// }
			for c := int64(1); c <= K; c++ {
				// if primes[c] {
				// 	sum++
				// 	continue
				// }
				sum += gcd(gcd(a, b), c)
			}
		}
	}
	fmt.Println(sum)
}

func gcd(a, b int64) int64 {
	if b > a {
		a, b = b, a
	}
	key := a*1000 + b
	value, ok := cache[key]
	if !ok {
		for b != 0 {
			a, b = b, a%b
		}
		value = a
		cache[key] = a
	}
	return value
}

var stdin = initStdin()

func initStdin() *bufio.Scanner {
	bufsize := 1 * 1024 * 1024 // 1 MB
	var stdin = bufio.NewScanner(os.Stdin)
	stdin.Buffer(make([]byte, bufsize), bufsize)
	stdin.Split(bufio.ScanWords)
	return stdin
}

func nextString() string {
	stdin.Scan()
	return stdin.Text()
}

func nextBytes() []byte {
	stdin.Scan()
	return stdin.Bytes()
}

func nextInt() int {
	i, _ := strconv.Atoi(nextString())
	return i
}

func nextInt64() int64 {
	i, _ := strconv.ParseInt(nextString(), 10, 64)
	return i
}
