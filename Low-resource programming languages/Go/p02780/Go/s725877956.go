package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer([]byte{}, math.MaxInt64)
}

func readInt() int {
	sc.Scan()
	r, _ := strconv.Atoi(sc.Text())
	return r
}

func readFloat64() float64 {
	sc.Scan()
	r, _ := strconv.ParseFloat(sc.Text(), 64)
	return r
}

func expect(nums ...float64) float64 {
	var sum float64 = 0
	for _, num := range nums {
		sum += num
	}
	return sum
}

func main() {
	n, k := readInt(), readInt()
	p := make([]float64, n)
	for i := 0; i < n; i++ {
		p[i] = readFloat64()
	}
	var sum, max float64 = -1, -1
	//for i := 0; i <= n-k; i++ {
	//	sum = expect(p[i : i+k]...)
	//	if sum > max {
	//		max = sum
	//	}
	//}
	fmt.Println(sum)
	fmt.Println(max)
}
