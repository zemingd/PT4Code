package main

import (
	"fmt"
	"regexp"
	"strings"
    "strconv"
)

func main() {
	var n, k int
	fmt.Scanf("%d %d", &n, &k)
	hate_nums := make([]string, k)
	for i := 0; i < k; i++ {
		fmt.Scan(&hate_nums[i])
	}
	hate_num_joins := strings.Join(hate_nums, "|")
	re := regexp.MustCompile("(" + hate_num_joins + ")")
	answer := n
	for {
        if re.MatchString(strconv.Itoa(answer)) {
			answer += 1
		} else {
			break
		}
	}
	fmt.Print(answer)
}

