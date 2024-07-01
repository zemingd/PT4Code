package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var stdInScanner = bufio.NewScanner(os.Stdin)

func nextInt() int {
	stdInScanner.Scan()
	i, _ := strconv.Atoi(stdInScanner.Text())
	return i
}

func isPrime(n int) bool {
	switch {
	case n < 2:
		return false
	case n == 2 || n == 3 || n == 5:
		return true
	case n&1 == 0:
		return false
	case n%2 == 0 || n%3 == 0 || n%5 == 0:
		return true
	}

	f := true
	v := 7
	m := int(math.Pow(float64(n), 0.5)) + 1
	for v < m {
		if n%v == 0 {
			return false
		}
		if f {
			v += 4
		} else {
			v += 2
		}
		f = !f
	}
	return true
}

func main() {
	stdInScanner.Split(bufio.ScanWords)

	N := nextInt()
	n := N

	if N == 1 {
		fmt.Println(0)
		return
	}

	answer := 0

	for i := 2; i*i <= N; i++ {
		e := 0
		for n%i == 0 {
			e++
			n /= i
		}
		for x := 1; x <= e; x++ {
			answer++
			e -= x
		}
	}
	if n != 1 {
		answer++
	}
	fmt.Println(answer)
}
