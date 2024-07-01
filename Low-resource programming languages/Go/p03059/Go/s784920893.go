package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)

	sc.Scan()
	abt := strings.Split(sc.Text(), " ")
	a, _ := strconv.Atoi(abt[0])
	b, _ := strconv.Atoi(abt[1])
	t, _ := strconv.Atoi(abt[2])
	res := t / a * b
	fmt.Println(res)
}
