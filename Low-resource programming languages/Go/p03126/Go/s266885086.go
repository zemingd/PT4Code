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
	duplicated := make(map[int]int)
	for i := 0; i < n; i++ {
		favorite := scanLine()
		for j := 1; j <= favorite[0]; j++ {
			duplicated[favorite[j]]++
		}
	}

	cnt := 0
	for i := 0; i <= m; i++ {
		if val, ok := duplicated[i]; ok {
			if val == n {
				cnt++
			}
		}
	}
	fmt.Println(cnt)
}
