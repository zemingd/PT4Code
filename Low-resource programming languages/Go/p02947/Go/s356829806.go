   package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func ReadLineStdin() string {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	str := scanner.Text()
	return strings.TrimSpace(str)
}

func StringToInt(s string) int {
	i, err := strconv.Atoi(s)
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	N := StringToInt(ReadLineStdin())

	res := 0
	counter := map[string]int{}
	for i := 0; i < N; i++ {
		tmp := strings.Split(ReadLineStdin(), "")
		sort.Strings(tmp)
		s := strings.Join(tmp, "")

		if _, ok := counter[s]; ok {
			res += counter[s]
			counter[s]++
		} else {
			counter[s] = 1
		}
	}
	fmt.Println(res)
}

