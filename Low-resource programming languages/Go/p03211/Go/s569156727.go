package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {

	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	s := sc.Text()
	result := 9999
	for i := 0; i < len(s)-2; i++ {
		j, _ := strconv.Atoi(s[i : i+3])
		diff := 753 - j
		if diff < 0 {
			diff = -diff
		}
		if result > diff {
			result = diff
		}
	}
	fmt.Println(result)
}
