package main

import (
	"bufio"
	"fmt"
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
	var n int
	fmt.Scanf("%d", &n)
	as := make([]int, n)
	for i := 0; i < n; i++ {
		var s int
		fmt.Scanf("%d", &s)
		as[i] = s
	}

	for i := 0; i < n; i++ {
		sl := append([]int{0}, as[:i]...) // 始点もいれる
		sl = append(sl, as[i+1:]...)
		sl = append(sl, 0) // 終点もいれる
		sum := 0
		for x := 0; x < len(sl)-1; x++ {
			d := sl[x+1] - sl[x]
			// abs(b-a)
			if d > 0 {
				sum += d
			} else {
				sum += -d
			}
		}
		fmt.Printf("%d\n", sum)
	}
}
