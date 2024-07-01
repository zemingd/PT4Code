package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	var inputs []string
	for i := 0; i <= 1; i++ {
		sc.Scan()
		inputs = append(inputs, sc.Text())
	}
	a, _ := strconv.Atoi(inputs[0])
	b := inputs[1]

	str := ""
	if len(b) > a {
		str += b[:a]
		str += "..."
	} else {
		str += b
	}
	fmt.Println(str)
}