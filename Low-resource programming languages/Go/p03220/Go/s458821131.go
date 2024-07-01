package main

import (
	"fmt"
	"os"
	"strconv"
	"strings"
	"bufio"
	"math"
)

var sc = bufio.NewScanner(os.Stdin)
var buf = make([]byte, 1000)

func inputLine() string{
	sc.Scan()
	return sc.Text()
}

func scanInt() int {
	out, e := strconv.Atoi(inputLine())
	if e != nil {
        panic(e)
    }
	return int(out)
}

func scanIntArray(n int) []float64 {
	out := make([]float64, n)
	for i, v := range(strings.Split(inputLine(), " ")) {
		num, e := strconv.Atoi(v)
		if e != nil {
			panic(e)
		}
		out[i] = float64(num)
	}
	return out
}
//  template end

func main() {
	sc.Buffer(buf, 10000)
	N := scanInt()
	ta := scanIntArray(2)
	T, A := ta[0], ta[1]
	H := scanIntArray(N)
	var min float64 = 100000.0
	min_i := -1
	for i:=0; i<N; i++ {
		d :=math.Abs(A - (T - H[i]*0.006))
		if d < min {
			min = d
			min_i = i
		}
	}
	fmt.Println(min_i+1)
}