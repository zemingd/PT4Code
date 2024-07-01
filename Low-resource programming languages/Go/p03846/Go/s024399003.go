package main

import (
	"fmt"
	//	"math"

	"sort"
	"strconv"
)

func stringToint(s string) int {
	i, _ := strconv.ParseInt(s, 10, 64)
	return int(i)
}

func noResult() {
	fmt.Println(0)
}

func main() {
	var n int
	var tmp string
	//	data := make([]int, 0, 0)
	fmt.Scan(&n)

	data := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&tmp)
		data[i] = stringToint(tmp)
	}
	/*
			scanner := bufio.NewScanner(os.Stdin)
			line := make([]string, 0, 0)
			data := make([]int, 0, 0)

			for scanner.Scan() && scanner.Text() != "" {
				if scanner.Err() != nil && scanner.Err() == io.EOF {
					break
				}
				line = append(line, scanner.Text())
			}
			if len(line) < 2 {
				noResult()
				return
			}

			input := strings.Split(line[1], " ")

			for _, s := range input {
				data = append(data, stringToint(s))
			}

		if len(data) != stringToint(line[0]) {
			noResult()
			return
		}
	*/

	sort.Ints(data)
	totalNum := 0

	if len(data)%2 != 0 {
		if data[0] != 0 {
			noResult()
			return
		} else {
			for i := 0; i < (len(data)-1)/2; i++ {
				if !(data[i*2+1] == (i+1)*2 && data[i*2+2] == (i+1)*2) {
					noResult()
					return
				}
			}
			totalNum = (len(data) - 1) / 2
		}
	} else {
		for i := 0; i < len(data)/2; i++ {
			if !(data[i*2] == (i+1)*2-1 && data[i*2+1] == (i+1)*2-1) {
				noResult()
				return
			}
		}
		totalNum = len(data) / 2
	}

	remain := 1
	for i := 0; i < totalNum; i++ {
		remain = (remain * 2) % 1000000007
	}
	fmt.Println(remain)
}