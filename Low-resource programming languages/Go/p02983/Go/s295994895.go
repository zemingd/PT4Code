package main
 
import (
	"bufio"
	"os"
	"strconv"
	"fmt"
)
 
var sc = bufio.NewScanner(os.Stdin)
var ReadString func() string
 
func init() {
	ReadString = newReadString()
}
 
/*------ scan ------*/
 
func newReadString() func() string {
	sc.Buffer(make([]byte, 1024), 2048)
	sc.Split(bufio.ScanWords)
	return func() string {
		if !sc.Scan() {
			panic("scanできなかった")
		}
		return sc.Text()
	}
}
 
func ReadLine() string {
	if !sc.Scan() {
		panic("line をscanできなかった")
	}
	return sc.Text()
}
 
func ReadInt64() int64 {
	i, err := strconv.ParseInt(ReadString(), 0, 64)
	if err != nil {
		fmt.Println("parseInt失敗")
		panic(err.Error())
	}
	return int64(i)
}
 
func ReadInt() int {
	i := ReadInt64()
	return int(i)
}
 
func ReadIntSlice(n int) []int {
	arr := make([]int, n)
	for i := 0; i < n; i++ {
		arr[i] = ReadInt()
	}
	return arr
}
 
func ReadInt64Slice(n int) []int64 {
	arr := make([]int64, n)
	for i := 0; i < n; i++ {
		arr[i] = ReadInt64()
	}
	return arr
}
 
/*------ number util ------*/
 
func GetIntAbs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}
 
func Atoi(a string) int {
	i, err := strconv.Atoi(a)
	if err != nil {
		panic(err.Error())
	}
	return i
}
 
func FindMin(arr []int) int {
	if len(arr) == 0 {
		return 0
	}
	min := arr[0]
	for _, v := range arr {
		if v < min {
			min = v
		}
	}
	return min
}
 
func FindMax(arr []int) int {
	if len(arr) == 0 {
		return 0
	}
	max := arr[0]
	for _, v := range arr {
		if v > max {
			max = v
		}
	}
	return max
}
 
 
func main() {
	L := ReadInt64()
	R := ReadInt64()
  var max, min int64
	max = L
      min = R
		if R > max {
			max = R
          min = L
		}
		var minRs int64
      minRs = 10000000
  var j, i int64
		for j = max; j >= min + 1; j-- {
			for i = j - 1; i >= min; i-- {
              if i % 2019 == 0 {
                fmt.Println(0)
                return
              }
             	var mod int64
              mod = (i * j) % 2019
				if mod < minRs {
					minRs = mod
				}
			}
		}
		fmt.Println(minRs)
}