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

	t := 0
	s := make([]int, m)
	for i := range s {
		fmt.Scan(&s[i])
		t += s[i]
	}

	if n < t {
		fmt.Println("-1")
		return
	}

	fmt.Println(n - t)
}

// =================================
// I/O util
// =================================

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

// =================================