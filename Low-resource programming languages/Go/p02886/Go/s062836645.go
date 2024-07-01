package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	t, _ := strconv.Atoi(sc.Text())
	return t
}

func main() {
	var N int
	fmt.Scan(&N)
	d := make([]int, N)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := 0; i < N; i++ {
		d[i] = nextInt(sc)
	}
	ans := 0
	for i := 0; i < len(d); i++ {
		for j := i; j < len(d); j++ {
			if i != j {
				ans += d[i] * d[j]
			}
		}
	}
	fmt.Println(ans)
}
