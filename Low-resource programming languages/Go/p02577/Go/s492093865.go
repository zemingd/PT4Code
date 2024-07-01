package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	j, _ := strconv.Atoi(stdin.Text())
	if j%9 == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
