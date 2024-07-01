package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
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

	can := false

	var slice []string
	for i := 0; i < len(sdash)-1; i++ {

		s := sdash[i:]
		if len(s) < len(t) {
			break
		}

		// fmt.Println(s)

		for j := 0; j < len(t); j++ {
			if string(t[j]) == string(s[j]) || string(s[j]) == "?" {
				can = true
			} else {
				can = false
				break
			}
		}

		if can {

			slice = append(slice,
				strings.Replace(
					strings.Join([]string{
						string(sdash[:i]),
						string(t),
						string(sdash[i+len(t):]),
					}, ""), "?", "a", -1))
		}

	}

	if can {
		// fmt.Println(slice)
		sort.Strings(slice)
		fmt.Println(slice[0])
	} else {
		fmt.Println("UNRESTORABLE")
	}

}
