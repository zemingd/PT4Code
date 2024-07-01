package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func nextLine() string {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	return sc.Text()
}

func main() {
	line := nextLine()
	texts := strings.Split(line, " ")
	r, _ := strconv.Atoi(texts[0])
	D, _ := strconv.Atoi(texts[1])
	x_2000, _ := strconv.Atoi(texts[2])

	x := x_2000
	for i := 0; i < 10; i++ {
		x = r*x - D
		fmt.Println(x)
	}
}
