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
	sc.Split(bufio.ScanWords)
	s := scanText()
	cnts := make([]int, 2019)
	sum := 0
	d := 1

	for i := 0; i < len(s); i++ {
		cn, _ := strconv.Atoi(s[len(s)-1-i : len(s)-i])
		sum += (cn * d) % 2019
		d = (10 * d) % 2019
		cnts[sum%2019]++
	}

	ans := cnts[0]
	for _, cnt := range cnts {
		ans += cnt * (cnt - 1) / 2
	}
	fmt.Println(ans)
}
