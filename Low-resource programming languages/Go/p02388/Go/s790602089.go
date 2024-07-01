package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)

	var s string
	if sc.Scan() {
		s = sc.Text()
	}

	i, err := strconv.ParseInt(s, 10, 64)
	if err != nil {
		panic(err)
	}

	fmt.Println(i * i * i)
}
