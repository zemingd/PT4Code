package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var n int
	fmt.Scan(&n)

	ns := make([][]int, 60)
	for i := range ns {
		ns[i] = []int{0, 0}
	}

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := 0; i < n; i++ {
		sc.Scan()
		a, _ := strconv.Atoi(sc.Text())
		for j := 0; j < 60; j++ {
			if a&(1<<uint(j)) > 0 {
				ns[j][1]++
			} else {
				ns[j][0]++
			}
		}
	}

	const mod int = 1e9 + 7
	var sum int
	mul := 1
	for i := range ns {
		cur := (ns[i][1] * ns[i][0]) % mod
		cur = (cur * mul) % mod
		sum = (sum + cur) % mod
		mul = (mul * 2) % mod
	}

	fmt.Println(sum)
}
