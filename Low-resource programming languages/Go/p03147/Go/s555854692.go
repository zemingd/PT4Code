package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.ParseInt(sc.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return int(i)
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	n := nextInt()

	var ans, active int
	nn := make([]int, 0, n)
	for i := 0; i < n; i++ {
		nn = append(nn, nextInt())
	}

	for i := 0; i < n; i++ {
		if active < nn[i] {
			ans += nn[i] - active
		}
		active = nn[i]
	}

	fmt.Printf("%#v\n", ans)
}
