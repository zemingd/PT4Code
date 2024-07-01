package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func get_int(sc *bufio.Scanner) int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	var n int
	fmt.Scan(&n)
	as := make([]int, n)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := range as {
		as[i] = get_int(sc)
	}

	i := len(as) - 1
	ans := make([]string, 0)
	for i >= 0 {
		ans = append(ans, strconv.Itoa(as[i]))
		i -= 2
	}
	if i == -1 {
		i = 0
	} else {
		i = 1
	}
	for i < len(as) {
		ans = append(ans, strconv.Itoa(as[i]))
		i += 2
	}
	fmt.Println(strings.Join(ans))
}
