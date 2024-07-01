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

	//rgb := strings.ReplaceAll(text, " ", "")
	rgb := strings.Replace(text, " ", "", -1)
	n, _ := strconv.Atoi(rgb)


	if n % 4 == 0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
