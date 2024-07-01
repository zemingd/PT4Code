package main

import (
	"fmt"
	"os"
	"bufio"
	"strconv"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	x_str := stdin.Text()

	x, _ := strconv.Atoi(x_str)
	var ans int = x * x * x

	fmt.Println(ans)
}

