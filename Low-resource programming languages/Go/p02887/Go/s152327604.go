package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
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

func main() {
	var n int
	fmt.Scan(&n)
	var s string
	fmt.Scan(&s)

	ans := 0
	for i := 0; i < n; {
		j := i
		for ; j < n-1 && s[j] == s[j+1]; j++ {
		}
		i = j+1
		ans++
	}

	fmt.Println(ans)
}