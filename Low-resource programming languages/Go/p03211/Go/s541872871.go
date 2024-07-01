package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func threeNums(s string) []int {

	var ret []int

	for i := 0; i < len(s)-2; i++ {
		t, err := strconv.Atoi(s[i : i+3])

		if err != nil {
			print("Error to parse")
		}

		ret = append(ret, t)
	}

	return ret
}

func nearest(ts []int) int {

	answer := 1000

	for _, t := range ts {

		d := 753 - t

		if d < 0 {
			d = -d
		}

		if d < answer {
			answer = d
		}
	}

	return answer
}
func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Split(bufio.ScanLines)

	ok := stdin.Scan()
	if !ok {
		print("Error to scan")
	}

	if err := stdin.Err(); err != nil {
		print("Error to scan")
	}

	line := stdin.Text()
	answer := nearest(threeNums(line))

	fmt.Println(answer)
}
