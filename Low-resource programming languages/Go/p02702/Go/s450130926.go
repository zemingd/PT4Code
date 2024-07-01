package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func scanText() string {
	sc.Buffer([]byte{}, math.MaxInt64)
	sc.Scan()
	return sc.Text()
}

func reverse(s string) (result string) {
	for _, v := range s {
		result = string(v) + result
	}
	return
}

var sc = bufio.NewScanner(os.Stdin)

func main() {
	N := 2019
	s := reverse(scanText())
	m := make([]int, N)
	total := 0
	d := 1
	m[0] = 1
	for _, c := range s {
		n, _ := strconv.Atoi(string(c))
		total += n * d
		total %= 2019
		d = (d * 10) % N
		m[total]++
	}
	sum := 0
	for _, v := range m {
		sum += v * (v - 1) / 2
	}
	fmt.Println(sum)
}
