package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func scanInt() int {
	scanner.Scan()
	a, err := strconv.Atoi(scanner.Text())
	if err != nil {
		fmt.Println(err)
	}
	return a
}

func main() {
	scanner.Split(bufio.ScanWords)

	n := scanInt()
	k := scanInt()

	sum := float64(0.0)
	for i := 1; i <= n; i++ {
		if i >= k {
			sum += 1.0 / float64(n)
			continue
		}
		cnt := 1
		f := 2
		for f*i < k {
			cnt++
			f *= 2
		}
		sum += 1.0 / float64(n) * (1.0 / math.Pow(2, float64(cnt)))
	}

	fmt.Println(sum)
}
