package main

import (
    "bufio"
    "fmt"
    "os"
  	"strconv"
  	"strings"
  	"sort"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
    sc.Scan()
    return sc.Text()
}

func main() {
    s := nextLine()
  	ss := strings.Split(s, " ")
  	N, _ := strconv.Atoi(ss[0])//個数
  
    dic := [] string{}
    for i := 1; i <= N; i++ {    
      dic = append(dic,nextLine())
     //fmt.Println(dic)//追加
    }
   sort.Strings(dic)//並べ替え
  dics := strings.Join(dic,"")
   fmt.Println(dics)
  
}