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
	if a >= 3200 {
		sc.Scan()
		fmt.Println(sc.Text())
	} else {
		fmt.Println("red")
	}
}
