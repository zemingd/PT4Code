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
	S, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	h := S / 3600
	m := S % 3600
	s := m % 60
	m /= 60

	fmt.Printf("%d:%d:%d\n", h, m, s)
}

