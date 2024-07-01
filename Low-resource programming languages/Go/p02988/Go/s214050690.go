package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	N, _ := strconv.Atoi(sc.Text())

	p := make([]int, N)
	for i := 0; i < N; i++ {
		sc.Scan()
		p[i], _ = strconv.Atoi(sc.Text())
	}

	count := 0
	for i := 2; i < N; i++ {
		if (p[i-1] > p[i-2] && p[i-1] <= p[i]) || (p[i-1] <= p[i-2] && p[i-1] > p[i]) {
			count += 1
		}
	}
	fmt.Println(count)
}
