package main

import (
	"fmt"
	"bufio"
    "os"
    "strconv"
    "strings"
   "math"
)

var sc = bufio.NewScanner(os.Stdin)

func NewLine() string {
  sc.Scan()
  return sc.Text()
}

func StrToInt(s string) int {
  n,_ := strconv.Atoi(s)
  return n
}

func Abs(n int) int {
   return int(math.Abs(float64(n)))
}

func IsOdd (n int) bool {
  return n % 2 == 1
}

func main() {
	var n int 
    n = StrToInt(NewLine())
    t := []int{0}
    x := []int{0}
    y := []int{0}
    
  for i:=0;i<n;i++{
    nums := strings.Split(NewLine()," ")
    t = append(t, StrToInt(nums[0]))
    x = append(x, StrToInt(nums[1]))
    y = append(y, StrToInt(nums[2]))
  }

  ans := true
  for i:=0;i<n-1;i++{
    time := Abs(t[i+1] - t[i])
    dis := Abs(x[i+1] - x[i]) + Abs(y[i+1] - y[i])
    
 
     if time <  dis || IsOdd(time) != IsOdd(dis) {
        ans = false
        break
    }
    
  }
  
  if ans {
    fmt.Println("Yes")
  } else {
    fmt.Println("No")
  }
}