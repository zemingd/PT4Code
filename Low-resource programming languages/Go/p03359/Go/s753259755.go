package main

import "bufio"
import "os"
import "strings"
import "strconv"

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
    sc.Scan()
    return sc.Text()
}

func main() {
	line := nextLine()
	cols := strings.Split(line, " ")

	month, _ := strconv.Atoi(cols[0])
	day, _ := strconv.Atoi(cols[1])

	if month > day {
		println(month - 1)
	} else {
		println(month)
	}
}
