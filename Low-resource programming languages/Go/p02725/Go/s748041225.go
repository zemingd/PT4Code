package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func readInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func readString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)

	k, n := readInt(), readInt()
	a := make([]int, n)
	for i := 0; i < n; i++ {
		input := readInt()
		a[i] = input
	}

	min := k
	for i := 0; i < n; i++ {
		a = append(a[1:], a[0])

		d := 0
		for j := 0; j < n-1; j++ {
			if a[j+1] == 0 {
				d += k - a[j]
			} else {
				d += int(math.Abs(float64(a[j+1] - a[j])))
			}
		}
		if d < min {
			min = d
		}
		fmt.Println(a, d)
	}
	fmt.Println(min)
}
