package main

import (
	"bufio"
	"fmt"
	"os"
)

var table = map[string]int{
	"SUN": 7,
	"MON": 6,
	"TUE": 5,
	"WED": 4,
	"THU": 3,
	"FRI": 2,
	"SAT": 1,
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	line := sc.Text()

	fmt.Println(table[line])
}
