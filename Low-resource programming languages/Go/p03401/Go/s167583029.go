package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	as := make([]int, n)
	for i := 0; i < n; i++ {
		x := nextInt()
		as[i] = x
	}

	for i := 0; i < n; i++ {
		sl := append([]int{0}, as[:i]...) // 始点もいれる
		sl = append(sl, as[i+1:]...)
		sl = append(sl, 0) // 終点もいれる
		sum := float64(0)
		for x := 0; x < len(sl)-1; x++ {
			sum += math.Abs(float64(sl[x+1] - sl[x]))
		}
		fmt.Printf("%d\n", int(sum))
	}
}
