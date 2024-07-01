package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	if sc.Scan() {
		x, err := strconv.Atoi(sc.Text())
		if err != nil {
			panic(err)
		}
		fmt.Println(x*x*x)
	}
}

