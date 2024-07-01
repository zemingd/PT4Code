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
	n, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	m, _ := strconv.Atoi(sc.Text())

	s := 0
	for i := 0; i < m; i++ {
		sc.Scan()
		tmp, _ := strconv.Atoi(sc.Text())
		s += tmp
	}

	if s > n {
		fmt.Println(-1)
	} else {
		fmt.Println(n - s)
	}
}