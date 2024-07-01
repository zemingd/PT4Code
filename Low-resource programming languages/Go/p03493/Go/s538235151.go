package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)

	stdin.Scan()
	text := stdin.Text()
	a, _ := strconv.Atoi(strings.Split(text, "")[0])
	b, _ := strconv.Atoi(strings.Split(text, "")[1])
	c, _ := strconv.Atoi(strings.Split(text, "")[2])

	fmt.Printf("%v\n", a+b+c)
}
