package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	t := sc.Text()
	fmt.Println(strings.Replace(t, "?", "D", -1))
}
