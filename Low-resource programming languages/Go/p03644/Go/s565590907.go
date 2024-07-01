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

func readFloat64() float64 {
	sc.Scan()
	r, _ := strconv.ParseFloat(sc.Text(), 6)
	return r
}

func main() {
	n := readFloat64()
	var ans int
	var v float64
	for i := 1; i <= 6; i++ {
		v = math.Pow(2, float64(i))
		if n >= v {
			ans = int(v)
		}
	}
	fmt.Println(ans)
}
