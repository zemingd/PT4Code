package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func readLine(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func strToInts(str string) []int {
	var res []int
	for _, s := range strings.Split(str, " ") {
		n, _ := strconv.Atoi(s)
		res = append(res, n)
	}
	return res
}

func main() {
	sc := bufio.NewScanner(os.Stdin)

	line1 := strToInts(readLine(sc))
	a, b := line1[0], line1[1]

	cnt := 0
	for i := 0; i < 2; i++ {
		if a >= b {
			cnt += a
			a--
		} else {
			cnt += b
			b--
		}
	}
	fmt.Println(cnt)
}
