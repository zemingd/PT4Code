package main

import(
	"fmt"
	"os"
	"bufio"
	"strings"
	"strconv"
	"math"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var s string
	if sc.Scan() {
		s = sc.Text()
	}

	sei := strings.Split(s, " ")

	a, _:= strconv.Atoi(sei[0])
	b, _:= strconv.Atoi(sei[1])

	plus := a + b
	minus := a - b
	multi := a * b

	nums := []int{plus, minus, multi}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}

	fmt.Println(res)