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
	sc.Scan()
	s := sc.Text()
	if a >= 3200 {
		fmt.Println(s)
	} else {
		fmt.Println("red")
	}
}
