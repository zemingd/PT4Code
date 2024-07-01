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

func strToInt(str string) []int {
	var ret []int
	for _, s := range strings.Split(str, " ") {
		num, _ := strconv.Atoi(s)
		ret = append(ret, num)
	}
	return ret
}

func main() {
	var n int
	ans := 0
	fmt.Scan(&n)
	sc := bufio.NewScanner(os.Stdin)
	vs := strToInt(readLine(sc))
	cs := strToInt(readLine(sc))
	for i := 0; i < n; i++ {
		if vs[i]-cs[i] > 0 {
			ans += (vs[i] - cs[i])
		}
	}
	fmt.Println(ans)
}
