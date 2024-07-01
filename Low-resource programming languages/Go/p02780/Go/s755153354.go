package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	k := nextInt()

	s := make([]float32, n)

	for i := 0; i < n; i++ {
		s[i] = expect(nextInt())
	}

	sum := float32(0)
	max := float32(0)

	for i := 0; i < n; i++ {
		if i == 0 {
			for j := 0; j < k; j++ {
				sum += s[j]
			}
		} else {
			sum -= s[i-1]
			sum += s[i+k-1]
		}
		if sum > max {
			max = sum
		}
	}
	fmt.Println(max)
}

func expect(p int) float32 {
	sum := p * (p + 1) / 2
	e := float32(sum) / float32(p)

	return e
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}
