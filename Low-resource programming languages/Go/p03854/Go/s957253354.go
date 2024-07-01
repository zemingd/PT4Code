package main

import (
	"fmt"
	"strings"
)


var sc = bufio.NewScanner(os.Stdin)

func scanStr() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	s := scanStr()
	var n string
	n = strings.Replace(s, "dre", ",dre", -1)
	n = strings.Replace(n, "era", ",era", -1)

	l := strings.Split(n, ",")

	ok := true
	for _, i := range l {
		if i == "eraser" || i == "erase" || i == "dream" || i == "dreamer" || i == "" {
			continue
		} else {
			ok = false
			break
		}
	}

	if ok {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}