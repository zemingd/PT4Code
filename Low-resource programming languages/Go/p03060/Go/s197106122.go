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

func strToInts(s string) []int {
	var ints []int
	for _, str := range strings.Split(s, " ") {
		i, _ := strconv.Atoi(str)
		ints = append(ints, i)
	}
	return ints
}

func subs(vs, cs []int) int {
	res := 0
	for i := 0; i < len(vs); i++ {
		if vs[i]-cs[i] <= 0 {
			continue
		}
		res += vs[i] - cs[i]
	}
	return res
}

func main() {
	var n int
	fmt.Scan(&n)

	sc := bufio.NewScanner(os.Stdin)

	vs := strToInts(readLine(sc))
	cs := strToInts(readLine(sc))

	fmt.Println(subs(vs, cs))
}
