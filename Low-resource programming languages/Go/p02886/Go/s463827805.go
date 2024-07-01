package main
 
import (
  "bufio"
  "fmt"
  "os"
  "strconv"
)
 
var sc = bufio.NewScanner(os.Stdin)

func next() int {
  sc.Scan()
  i, _ := strconv.Atoi(sc.Text())
  return i
}

func main() {
  sc.Split(bufio.ScanWords)
  n := next()
  tako := make([]int, n, n)
  takoSum := 0  // たこ焼きn種の回復量の和
  ans := 0 // 答え

  for i := 0; i < n; i++ {
    tako[i] = next()
    takoSum += tako[i]
  }
  
  for i := 0; i < n; i++ {
    ans += (takoSum - tako[i]) * tako[i]
  }
  // この時点だとあるたこ焼きの組は2回数えられているので2で割る
  ans /= 2
  fmt.Println(ans)
}