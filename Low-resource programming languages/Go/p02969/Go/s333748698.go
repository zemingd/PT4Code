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

	a, _ := strconv.ParseInt(tmp, 10, 64)

	fmt.Println(3 * a * a)
}
