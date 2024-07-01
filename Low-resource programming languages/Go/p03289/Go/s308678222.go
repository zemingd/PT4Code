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
	scanInit()

	s := nextStr()

	if s[0] != 'A' {
		fmt.Println("WA")
		return
	}
	if strings.Count(s, "C") != 1 {
		fmt.Println("WA")
		return
	}
	cidx := strings.Index(s, "C")
	if cidx == 1 || cidx == len(s)-1 {
		fmt.Println("WA")
		return
	}

	for i := 1; i < len(s); i++ {
		if s[i] != 'C' {
			if 'a' > s[i] || s[i] > 'z' {
				fmt.Println("WA")
				return
			}
		}
	}

	fmt.Println("AC")

}

// ---- readfunc
func scanInit() {
	const cap = 200 * 1024 // Default=64
	var buf = make([]byte, cap)
	sc.Buffer(buf, cap)
	sc.Split(bufio.ScanWords)
	return
}
func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}
