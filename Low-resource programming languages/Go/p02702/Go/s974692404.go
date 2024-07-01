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
	s := scanText()
	m := make([]int, N)
	total := 0
	ten := 1
	for i := 0; i < len(s); i++ {
		n, _ := strconv.Atoi(s[len(s)-1-i : len(s)-i])
		total += (n * ten) % N
		ten = (ten * 10) % N
		m[total%N]++
	}
	sum := m[0]
	for _, v := range m {
		sum += v * (v - 1) / 2
	}
	fmt.Println(sum)
}
