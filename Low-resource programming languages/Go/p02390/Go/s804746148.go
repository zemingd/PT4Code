package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	a, _ := strconv.Atoi(sc.Text())
	s := a % 60
	m := a / 60 % 60
	h := a / 60 / 60
	fmt.Printf("%d:%d:%d\n", h, m, s)
}

