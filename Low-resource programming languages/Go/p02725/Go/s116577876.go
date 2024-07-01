package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	//"strings"
	"sort"
	"math"
)

var (
	//in  = bufio.NewReaderSize(os.Stdin,math.MaxInt64)
	//out = bufio.NewWriter(os.Stdout)
	in = bufio.NewScanner(os.Stdin)
	)
func init(){
	in.Buffer([]byte{}, math.MaxInt64)
	in.Split(bufio.ScanWords)
}
func main() {
	t := readInt64Slice(2)
	lakeLength := t[0]
	houses := t[1]
	housePosSlice := readFloat64Slice(int(houses))
	houseDistanceSlice := make([]float64,houses,houses)

	for i :=0 ; i < len(housePosSlice)-1; i++ {
		houseDistanceSlice[i] = housePosSlice[i+1] - housePosSlice[i]
	}

	houseDistanceSlice[houses-1] = (float64(lakeLength) - housePosSlice[houses-1]) + housePosSlice[0]
	sort.Float64s(houseDistanceSlice)
	sum := 0

	for _,val := range houseDistanceSlice[0: len(houseDistanceSlice) -1]{
		sum += int(val)
	}
	fmt.Println(sum)
}

func readInt64Slice(n int) []int64 {
	line := readStringSlice(n)
	slice := make([]int64, 0, len(line))
	for _, tmp := range line {
		val, err := strconv.ParseInt(tmp, 10, 64)
		if err != nil {
			fmt.Println(err)
			os.Exit(1)
		}
		slice = append(slice, val)
	}
	return slice
}
func readFloat64Slice(n int) []float64 {
	line := readStringSlice(n)
	slice := make([]float64, 0, len(line))
	for _, tmp := range line {
		val, err := strconv.ParseFloat(tmp, 64)
		if err != nil {
			fmt.Println(err)
			os.Exit(1)
		}
		slice = append(slice, val)

	}
	return slice
}
func readString() string {
	in.Scan()
	return in.Text()

}
func readStringSlice(n int) []string {
	s := make([]string, n)
	for i :=0; i < n; i++{
		s[i] = readString()
	}
	return s
}
func dump(value ...interface{}) {
	for _, v := range value {
		fmt.Printf("%#v\n", v)
	}
}