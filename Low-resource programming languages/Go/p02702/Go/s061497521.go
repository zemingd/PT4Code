package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func scanText() string {
	sc.Scan()
	return sc.Text()
}

func reverse(s string) (result string) {
	for _, v := range s {
		result = string(v) + result
	}
	return
}

var sc = bufio.NewScanner(os.Stdin)

func main() {
	s := reverse(scanText())
	cnts := map[int]int{}
	sum := 0
	d := 1

	cnts[0] = 1
	for _, c := range s {
		cn, _ := strconv.Atoi(string(c))
		sum += cn * d
		sum %= 2019
		d *= 10
		d %= 2019
		cnts[sum]++
	}

	ans := 0
	for _, cnt := range cnts {
		ans += cnt * (cnt - 1) / 2
	}
	fmt.Println(ans)
}
