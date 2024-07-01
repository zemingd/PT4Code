package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	searchFavoriteFood(n, m)
}

func scanLine() (favorite []int) {
	scanner := bufio.NewScanner(os.Stdin)

	scanner.Scan()
	input := scanner.Text()

	stringSplited := strings.Split(input, " ")

	for _, str := range stringSplited {
		if str != "" {
			n, _ := strconv.Atoi(str)
			favorite = append(favorite, n)
		}
	}
	return
}

func searchFavoriteFood(n, m int) {
	kindlist := make([]int, m+1)
	for i := 0; i < n; i++ {
		favorite := scanLine()
		for j := 0; j < favorite[0]; j++ {
			kindlist[favorite[j+1]]++
		}
	}

	cnt := 0
	for i := 1; i <= m; i++ {
		if kindlist[i] == n {
			cnt++
		}
	}
	fmt.Println(kindlist)
	fmt.Println(cnt)
}
