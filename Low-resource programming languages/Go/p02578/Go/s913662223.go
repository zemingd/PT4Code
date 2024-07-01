package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var n int
	fmt.Scan(&n)

	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	str := sc.Text()

	strSlice := strings.Split(str, " ")

	var intSlice []int

	for _, sv := range strSlice {
		iv, _ := strconv.Atoi(string(sv))
		intSlice = append(intSlice, iv)
	}

	count, prevValue := 0, 0

	for i := 0; i < len(intSlice); i++ {
		iv := intSlice[i]

		if prevValue > iv {
			count += prevValue - iv
		}

		if prevValue-iv <= 0 {
			prevValue = iv
			continue
		}

		prevValue = iv + (prevValue - iv)
	}

	fmt.Println(count)
}
