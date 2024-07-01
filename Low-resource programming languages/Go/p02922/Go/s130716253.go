package main

import(
	"fmt"
	"os"
	"bufio"
	"strings"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var s string
	if sc.Scan() {
		s = sc.Text()
	}

	sei := strings.Split(s, " ")

	a, _:= strconv.Atoi(sei[0])
	b, _:= strconv.Atoi(sei[1])

	ans := 0;
	outlet := 1;
	for {
		outlet--
		outlet += a
		ans++

		if outlet < b {
			break
		}
	}

	fmt.Println(ans);
}