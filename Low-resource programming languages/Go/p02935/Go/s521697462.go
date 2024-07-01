package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	var n int
	fmt.Scan(&n)

	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	str := sc.Text()
	a := strings.Split(str, " ")
	b := make([]int, n)
	for i, v := range a {
		b[i], _ = strconv.Atoi(v)
	}

	sort.Ints(b)
	ans := float64(b[0])
	for i := 1; i < len(b); i++ {
		ans = (ans + float64(b[i])) / 2.0
	}
	fmt.Println(ans)
}
