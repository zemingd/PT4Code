package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var s string
	if sc.Scan() {
		s = sc.Text()
	}

	slice := strings.Split(s, " ")
	a, _ := strconv.Atoi(slice[0])
	b, _ := strconv.Atoi(slice[1])
	if b == 1 {
		fmt.Println(0)
		return
	}
	n := a // 電源口の数

	ans := 1
	for n < b {
		n += a - 1
		ans++
	}
	fmt.Println(ans)
}
