package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
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
	fmt.Scan(&s)
	slice := strings.Split(s, "")
	// ans := make([]int, len(s))

	even := 0
	odd := 0

	for i := 0; i < len(s); i++ {
		num, _ := strconv.Atoi(slice[i])
		if num%2 == 0 {
			even++
		} else {
			odd++
		}
	}

	fmt.Println(len(s) - abs(even-odd))

}

func abs(a int) int {
	if a < 0 {
		return -1 * a
	}
	return a
}
