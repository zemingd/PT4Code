package main
 
import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)
 
func main() {
	scan_init()
	k := scanInt()
	n := scanInt()
	// a := make([]int,n)
	circle := make(map[int]int)
	houses := []int{}
	for i:=0; i<n; i++ {
		number := scanInt() % k
		if number == 0 {
			number = k
		}
		if _,ok := circle[number]; !ok {
			circle[number] = number
			houses = append(houses,number)
		}
	}
	mergin := 0
	sort.Ints(houses)
	newN := len(houses)
	for i:=1; i<newN; i++ {
		length := houses[i] - houses[i-1]
		if length<0 {
			length = -length
		}
		if length > mergin {
			mergin = length
		}
	}
	length := (k-houses[newN-1])+houses[0]
	if length < 0 {
		length = -length
	}
	if mergin < length {
		mergin = length
	}
	fmt.Println(k-mergin)
}
var sc = bufio.NewScanner(os.Stdin)
func scan_init () {
	sc.Split(bufio.ScanWords)
}
func scanInt () int{
sc.Scan()
	i,_ := strconv.Atoi(sc.Text())
	return i
}
//func scan () string{
//  sc.Scan()
//	return sc.Text()
//}