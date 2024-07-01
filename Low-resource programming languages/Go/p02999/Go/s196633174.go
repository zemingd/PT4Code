package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	tmp, _ := reader.ReadString('\n')
	tmp = strings.Trim(tmp, "\n")
	nk := strings.Split(tmp, " ")

	n, _ := strconv.Atoi(nk[0])
	x, _ := strconv.Atoi(nk[1])

	if n >= x {
		fmt.Println("10")
	} else {
		fmt.Println("0")
	}
}
