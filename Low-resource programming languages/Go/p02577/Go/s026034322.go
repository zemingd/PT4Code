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

	tmp, _ := strconv.Atoi(stdin.Text())

	if tmp%9 != 0 {
		fmt.Println("No")
	} else {
		N := strings.Split(stdin.Text(), "")
		sum := 0
		for _, i := range N {
			j, _ := strconv.Atoi(i)
			sum += j
		}

		if sum%9 == 0 {
			fmt.Println("Yes")
		} else {
			fmt.Println("No")
		}
	}

}
