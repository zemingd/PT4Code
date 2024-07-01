package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	s := bufio.NewScanner(os.Stdin)
	s.Scan()
	price, _ := strconv.Atoi(s.Text())

	if mod := price % 1000; mod == 0 {
		fmt.Println(0)
	} else {
		fmt.Println(1000 - mod)
	}

}
