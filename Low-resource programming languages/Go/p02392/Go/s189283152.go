package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {

	if sc.Scan() {
		tmp := strings.Split(sc.Text(), " ")
		a, _ := strconv.Atoi(tmp[0])
		b, _ := strconv.Atoi(tmp[1])
		c, _ := strconv.Atoi(tmp[2])

		if a < b && b < c {
			fmt.Println("Yes")
		} else {
			fmt.Println("No")
		}

	}
}

