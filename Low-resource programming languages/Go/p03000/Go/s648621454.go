package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var n, x, sum, cnt int
	fmt.Scan(&n, &x)

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	l := make([]int, n)
	for i := range l {
		sc.Scan()
		l[i], _ = strconv.Atoi(sc.Text())
	}

	cnt = 1
	for _, v := range l {
		if sum+v > x {
			fmt.Println(cnt)
			return
		}
		sum += v
		cnt++
	}
	fmt.Println(cnt)
}
