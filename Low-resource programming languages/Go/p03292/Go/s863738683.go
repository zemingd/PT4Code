package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	arr := strings.Split(sc.Text(), " ")
	nums := make([]int, 3)
	for i := range arr {
		nums[i], _ = strconv.Atoi(arr[i])
	}
	sort.Ints(nums)
	fmt.Println(nums[len(nums)-1] - nums[0])
}
