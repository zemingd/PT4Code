package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"sort"
	"strconv"
)

var (
	reader io.Reader = os.Stdin
	writer io.Writer = os.Stdout
)

func main() {
	run()
}

func run() {
	scanner := bufio.NewScanner(reader)
	scanner.Scan()
	N, _ := strconv.Atoi(scanner.Text())

	nums := make([]int, 0, N)

	for scanner.Scan() {
		num, _ := strconv.Atoi(scanner.Text())
		nums = append(nums, num)
	}

	sort.Ints(nums)
	count := 1

	for i := 1; i < N; i++ {
		if nums[i] > nums[i-1] {
			count++
		}
	}

	fmt.Fprintln(writer, count)
}
