package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	var s string
	var k int
	fmt.Scan(&s)
	fmt.Scan(&k)

	sum := 0
	for _, ss := range s {
		if string(ss) == "1" {
			sum++
		} else {
			break
		}
	}

	if sum >= k {
		fmt.Println(1)
	} else {
		fmt.Println(string(s[sum]))
	}

}
