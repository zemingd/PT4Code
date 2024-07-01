package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	// 標準入力読み取り
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	//1行
	str := scanner.Text()

	t := strings.Split(str, " ")
	a, _ := strconv.Atoi(t[0])
	b, _ := strconv.Atoi(t[1])
	c, _ := strconv.Atoi(t[2])

	judge := make([]int, 10)
	judge[a]++
	judge[b]++
	judge[c]++
	for _, j := range judge {
		if j == 2 {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
	return

}
