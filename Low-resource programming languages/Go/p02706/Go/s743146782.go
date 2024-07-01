package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	n := scanInt()
	m := scanInt()

	tsk := 0
	for i := 0; i < m; i++ {
		tsk += scanInt()
	}

	if tsk > n {
		fmt.Println(-1)
	} else {
		fmt.Println(n - tsk)
	}
}

func scanInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}