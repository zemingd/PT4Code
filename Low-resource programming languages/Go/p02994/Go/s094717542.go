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
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	n, l := nextInt(), nextInt()

	apple := make([]int, n)
	total := 0
	for i := 0; i < n; i++ {
		apple[i] = i + l
		total += apple[i]
	}

	min := math.Inf(1)
	ans := 0

	for i := 0; i < n; i++ {
		sum := 0
		for j := 0; j < n; j++ {
			if i == j {
				continue
			}
			sum += apple[j]
		}
		tmp := float64(sum) - float64(total)

		if math.Abs(tmp) < min {
			min = tmp
			ans = sum
		}

	}

	fmt.Println(ans)
}
