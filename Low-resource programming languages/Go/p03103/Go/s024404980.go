package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

type ShopEntry struct {
	Price    int
	BuyLimit int
}

type ShopEntries []ShopEntry

func (p ShopEntries) Len() int {
	return len(p)
}

func (p ShopEntries) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}

func (p ShopEntries) Less(i, j int) bool {
	return p[i].Price < p[j].Price
}

func main() {
	var (
		In        = ReadLineInt()
		ShopCount = In[0]
		Shops     = make([]ShopEntry, 0)
		Target    = In[1]
	)

	for i := 0; i < ShopCount; i++ {
		Input := ReadLineInt()
		Shops = append(Shops, ShopEntry{
			Input[0],
			Input[1],
		})
	}

	sort.Sort(ShopEntries(Shops))

	Result := 0
	for _, v := range Shops {
		Price := v.Price
		BuyLimit := v.BuyLimit

		if BuyLimit >= Target {
			Result += Price * Target
			//fmt.Println(Price, Target)
			break
		}

		Result += Price * BuyLimit
		Target -= BuyLimit
		//fmt.Println(Price, BuyLimit)
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