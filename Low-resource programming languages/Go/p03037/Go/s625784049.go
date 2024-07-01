package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func asInt(s string) []int {
	arr := strings.Split(s, " ")
	is := make([]int, 0, len(arr))
	for _, str := range arr {
		i, _ := strconv.Atoi(str)
		is = append(is, i)
	}
	return is
}

func main() {
	nm := asInt(nextLine())
	area := make([]int, 2, 2)
	lr := asInt(nextLine())
	area[0] = lr[0]
	area[1] = lr[1]
	for i := 1; i < nm[1]; i++ {
		lr = asInt(nextLine())
		if area[0] < lr[0] {
			area[0] = lr[0]
		}
		if area[1] > lr[1] {
			area[1] = lr[1]
		}
	}
	ans := area[1] - area[0] + 1
	if ans < 0 {
		ans = 0
	}
	fmt.Println(ans)
}
