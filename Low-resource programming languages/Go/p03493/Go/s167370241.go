package main

import (
    "fmt"
    "strings"
    "os"
    "bufio"
    // "strconv"
)

// 文字列を1行取得
func StrStdin() (stringReturned string) {
    scanner := bufio.NewScanner(os.Stdin)

    scanner.Scan()
    stringInput := scanner.Text()

    stringReturned = strings.TrimSpace(stringInput)
    return
}

func main(){
  var s = StrStdin()
  // fmt.Println(s)
  result := 0
  for i:=0; i<len(s); i++ {
    // fmt.Println(s[i:i+1])
    if s[i:i+1] == "1"{
      result+=1
    }
  }
  fmt.Println(result)
}
