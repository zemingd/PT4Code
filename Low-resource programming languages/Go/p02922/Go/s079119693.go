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

	if a == b{
		fmt.Println(1);
		os.Exit(0);
	}

	mi := 1
	c := a
	var ans int
	for {
		a = a + c
		ans = a - mi
		mi++
		if b <= ans{
			break
		}
	}

	fmt.Println(mi);
}