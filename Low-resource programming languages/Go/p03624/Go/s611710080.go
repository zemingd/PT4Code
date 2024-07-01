package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	scanInit()

	s := nextStr()

	for j := 'a'; j <= 'z'; j++ {
		found := false
		for i := 0; i < len(s); i++ {
			if s[i] == byte(j) {
				found = true
				break
			}
		}
		if found == false {
			fmt.Println(string(j))
			return
		}
	}

	fmt.Println("None")

}

// ---- readfunc
func scanInit() {
	const cap = 1000 * 1024
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
