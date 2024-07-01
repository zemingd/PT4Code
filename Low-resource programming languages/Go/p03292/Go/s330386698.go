package main

import (
	"bufio"
	"os"
	"strings"
	"strconv"
	"sort"
	"fmt"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	// get stg input
	s := nextLine()
	tasksInput := strings.Split(s, " ")

	// []string -> []int
	tasks := make([]int, len(tasksInput))
	for i, s := range tasksInput {
		v, err := strconv.Atoi(s)
		if err != nil {
			return
		}
		tasks[i] = v
	}

	// asc sort
	sort.Sort(sort.IntSlice(tasks))

	// calc result
	result := 0
	for i, s := range tasks {
		if i != 0 {
			result += s - tasks[i-1]
		}
	}

	// output
	fmt.Println(result)
	return
}
