package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
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
	ans := ""
	i := len(as) - 1
	for i >= 0 {
		ans += strconv.Itoa(as[i]) + " "
		i -= 2
	}
	if i == -1 {
		i = 0
	} else {
		i = 1
	}
	for i < len(as) {
		ans += strconv.Itoa(as[i]) + " "
		i += 2
	}
	fmt.Println(ans)
}
