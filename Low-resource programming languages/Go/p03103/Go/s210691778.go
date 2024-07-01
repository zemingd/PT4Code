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
	var (
		In        = ReadLineInt()
		ShopCount = In[0]
		Shops     = map[int]int{}
		Prices    = make([]int, 0)
		Target    = In[1]
	)

	for i := 0; i < ShopCount; i++ {
		Input := ReadLineInt()
		Prices = append(Prices, Input[0])
		Shops[Input[0]] = Input[1]
	}

	sort.Ints(Prices)

	Result := 0
	for i := 0; i < len(Prices); i++ {
		Price := Prices[i]
		BuyLimit := Shops[Price]

		if BuyLimit >= Target {
			Result += Price * Target
			break
		}

		Result += Price * BuyLimit
		Target -= BuyLimit
	}

	fmt.Println(Result)
}

/////////////////////////////////////////

func fln(format string, elements ...interface{}) {
	fmt.Printf(format+"\n", elements...)
}

var BufReader = bufio.NewReaderSize(os.Stdin, 1e6)

func ReadLine() string {
	a, _, _ := BufReader.ReadLine()
	return string(a)
}

func ReadLineInt() (result []int) {
	in := strings.Split(ReadLine(), " ")
	result = make([]int, 0, 2)
	for _, v := range in {
		t, _ := strconv.Atoi(v)
		result = append(result, t)
	}
	return
}