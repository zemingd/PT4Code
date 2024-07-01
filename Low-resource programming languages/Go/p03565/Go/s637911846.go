package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	var (
		sdash string
		t     string
	)

	fmt.Scan(&sdash)
	fmt.Scan(&t)

	pos := 0
	can := false

	for pos != len(sdash)-1 {

		s := sdash[pos:]
		if len(s) < len(t) {
			break
		}

		for i := 0; i < len(t); i++ {
			if string(t[i]) == string(s[i]) || string(s[i]) == "?" {
				can = true
			} else {
				can = false
				break
			}
		}

		if can {
			break
		}

		pos++

	}

	if can {
		var slice []string
		slice = append(slice, string(sdash[:pos]))
		slice = append(slice, string(t))
		slice = append(slice, string(sdash[pos+len(t):]))

		var ans string
		ans = strings.Replace(strings.Join(slice, ""), "?", "a", -1)

		fmt.Println(ans)
	} else {
		fmt.Println("UNRESTORABLE")
	}

}
