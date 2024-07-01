package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

func intSlice(str string) []int {
	splitted := strings.Split(str, " ")
	ret := make([]int, len(splitted))

	for i, str := range splitted {
		if strings.TrimSpace(str) != "" {
			n, _ := strconv.Atoi(str)
			ret[i] = n
		}
	}

	return ret
}

func main() {

	stdin := bufio.NewScanner(os.Stdin)

	// 一行目
	stdin.Scan()
	line1 := stdin.Text()
	ints1 := intSlice(line1)
	n := ints1[0]
	k := ints1[1]

	var p float64

	p = 0.0

	for i := 1; i <= n; i++ {

		r := math.Ceil(math.Log2(float64(k) / float64(i)))
		p += math.Pow(0.5, r) / float64(n)
	}

	fmt.Printf("%.10f\n", p)
}
