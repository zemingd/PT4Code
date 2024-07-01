package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())

	arr := make([]int, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		arr[i], _ = strconv.Atoi(sc.Text())
	}

	result := make([]int, 0)
	for _, el := range arr {
		if len(result) == 0 || result[len(result)-1] >= el {
			result = append(result, el)
		} else {
			i := sort.Search(len(result), func(i int) bool {
				return el > result[i]
			})
			result[i] = el
		}
	}

	fmt.Println(len(result))
}
