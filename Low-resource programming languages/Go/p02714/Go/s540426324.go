package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	num, _ := strconv.Atoi(scanString())
	return num
}

func scanString() string {
	sc.Scan()
	return sc.Text()
}

func init() {
	sc.Split(bufio.ScanWords)
}

func main() {
	l := scanInt()
	s := scanString()
	cnt := 0
	for i := 0; i < l; i++ {
		for j := i + 1; j < l; j++ {
			if s[i] == s[j] {
				continue
			}
			k := strings.Replace("RGB", string(s[i]), "", 1)
			k = strings.Replace(k, string(s[j]), "", 1)
			cnt += strings.Count(s[j+1:], k)
			if (2*j-i) <= (l-1) && k == string(s[2*j-i]) {
				cnt--
			}
		}
	}
	fmt.Println(cnt)
}
