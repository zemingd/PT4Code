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

func CombinationTwo(n int64) int64 {
	return n * (n - 1) / 2
}

func main() {
	N := StringToInt(ReadLineStdin())
	counter := map[string]int{}
	for i := 0; i < N; i++ {
		s := strings.Split(ReadLineStdin(), "")
		sort.Strings(s)
		counter[strings.Join(s, "")]++
	}
	var res = int64(0)
	for _, count := range(counter) {
		res += CombinationTwo(int64(count))
	}
	fmt.Println(res)
}

