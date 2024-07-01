package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)


	l := make([]int, m)
	r := make([]int, m)
	upper := n
	lower := 0
	for i := 0; i < m; i++ {
		sc.Scan()
		l[i], _ = strconv.Atoi(sc.Text())
		sc.Scan()
		r[i], _ = strconv.Atoi(sc.Text())

		if lower < l[i] {
			lower = l[i]
		}
		if upper > r[i] {
			upper = r[i]
		}
	}

	fmt.Println(upper - lower + 1)


}
