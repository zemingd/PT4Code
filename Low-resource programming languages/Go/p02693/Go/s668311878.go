package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	k := nextInt()
	v := strings.Split(nextLine(), " ")

	a, _ := strconv.Atoi(v[0])
	b, _ := strconv.Atoi(v[1])

	for i := a; i <= b; i++ {
		if i % k == 0 {
			fmt.Println("OK")
			return
		}
	}
	fmt.Println("NG")
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
