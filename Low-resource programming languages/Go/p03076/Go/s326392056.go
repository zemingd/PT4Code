package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	var t [5]int

	for i := 0; i < 5; i++ {
		tmp, _ := reader.ReadString('\n')
		tmp = strings.Trim(tmp, "\n")
		t[i], _ = strconv.Atoi(tmp)
	}

	diff, sum := calcDiff(t)

	var pos int
	min := sum
	for i := 0; i < 5; i++ {
		if min > (sum - diff[i]) {
			min = sum - diff[i]
			pos = i
		}

	}

	var ans int
	for i := 0; i < 5; i++ {
		if i != pos {
			ans += t[i] + diff[i]
		} else {
			ans += t[i]
		}
	}
	fmt.Println(ans)
}

func calcDiff(t [5]int) ([5]int, int) {
	var diff [5]int
	var sum int
	for i := 0; i < 5; i++ {
		rem := t[i] % 10
		if rem > 0 {
			diff[i] = 10 - rem
		} else {
			diff[i] = 0
		}
		sum += diff[i]
	}

	return diff, sum

}
