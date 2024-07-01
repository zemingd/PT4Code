package main

import (
	"fmt"
	"bufio"
	"os"
	"strings"
	"strconv"
	"sort"
)

var sc = bufio.NewScanner(os.Stdin)

func readLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	ss := strings.Split(readLine(), " ")
	tt := make([]int, len(ss))
	for i := 0; i < len(ss); i++ {
		tt[i], _ = strconv.Atoi(ss[i])
	}
	sort.Ints(tt)
	fmt.Println(tt[2]*10 + tt[1] + tt[0])
}
