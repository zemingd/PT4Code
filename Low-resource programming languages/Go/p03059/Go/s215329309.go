package main

import (
  "bufio"
  "os"
  "fmt"
  "strings"
  "strconv"
)

func main() {
  sl := getall()
  in := toi(sl[0])
  A,B,T := in[0],in[1],in[2]
  pp(A,B,T)
  ans := T/A * B
  pp(ans)
}

// すべての行を読み込み、スライス文字列として返す
func getall() []string {
  var s string
  scanner := bufio.NewScanner(os.Stdin)
  for scanner.Scan() {
    s = s + scanner.Text() + "\n"
  }
  return strings.Split(s,"\n")
}
// 標準出力
func pp(s ...interface{}) {
  fmt.Println(s...)
}
// 空白区切りの文字列をすべて数値に変換してスライスとして返す
func toi(s string) []int {
  nums := []int{}
  sl := strings.Split(s," ")
  for _,v := range sl {
    nums = append(nums,i(v))
  }
  return nums
}
// 文字を数値に変換して返す
func i(s string) int {
  num,_ := strconv.Atoi(s)
  return num
}
// 空白区切りの文字列をスライスとして返す
func tos(s string) []string {
  sl := strings.Split(s," ")
  return sl
}