package main

import (
	"bufio"
	"fmt"
	"os"
)

var rdr = bufio.NewReaderSize(os.Stdin, 1000000)

func readLine() string {
	buf := make([]byte, 0, 1000000)
	for {
		l, p, e := rdr.ReadLine()
		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}

func main() {
	var N int
	fmt.Scanf("%d", &N)

	c := map[string]int{}

	s := make([]string, N)
	for i := 0; i < N; i++ {
		s[i] = readLine()
	}

	for i := 0; i < N; i++ {
		a := count(s[i])
		key := fmt.Sprintf("%+v", a)
		_, ok := c[key]
		if ok {
			c[key] += 1
			continue
		}
		c[key] = 1
	}

	var total int64
	for _, count := range c {
		if count == 1 {
			continue
		}
		total += int64(combination(count, 2))
	}

	fmt.Printf("%d", total)
}

func permutation(n int, k int) int64 {
	v := int64(1)
	if 0 < k && k <= n {
		for i := 0; i < k; i++ {
			v *= int64(n - i)
		}
	} else if k > n {
		v = 0
	}
	return v
}

func factorial(n int) int64 {
	return permutation(n, n - 1)
}

func combination(n int, k int) int64 {
	return permutation(n, k) / factorial(k)
}


func count(s string) map[rune]int {
	c := map[rune]int{}
	for _, r := range s {
		_, ok := c[r]
		if ok {
			c[r] += 1
			continue
		}
		c[r] = 1
	}
	return c
}
