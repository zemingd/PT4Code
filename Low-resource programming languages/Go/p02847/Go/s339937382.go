package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	week := map[string]int{
		"MON": 1,
		"TUE": 2,
		"WED": 3,
		"THU": 4,
		"FRI": 5,
		"SAT": 6,
		"SUN": 7,
	}
	s := nextString()

	nextSunday := 0
	if s == "SUN" {
		nextSunday = 7
	} else {
		nextSunday = week["SUN"] - week[s]
	}
	fmt.Println(nextSunday)
}
