package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func getInput() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	var n, k int
	var d string
	fmt.Scan(&n, &k)
	d = getInput()
	dislikes := strings.Split(d, " ")
	// fmt.Printf("n = %d, k = %d, d = %s, dislikes = %v\n", n, k, d, dislikes)

	var result int
	for i := n; i <= n*10; i++ {
		s := strconv.Itoa(i)
		isContain := false
		for _, dislike := range dislikes {
			if strings.Contains(s, dislike) {
				isContain = true
				break
			}
		}
		if !isContain {
			// fmt.Printf("not contain! i = %d\n", i)
			result = i
			break
		}
	}

	fmt.Println(result)
}
