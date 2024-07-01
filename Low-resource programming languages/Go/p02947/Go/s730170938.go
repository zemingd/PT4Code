package main

import (
  "fmt"
  "sort"
  "strings"
   "os"
   "bufio"
)

func main(){
  var N,count,ans int
  
  //文字列の格納先のスライス作成
  s := make(map[int]string)
  s_ := make(map[string]string)
  //s_ := make([]string,100000)
  
  //文字列の数を入力
  fmt.Scan(&N)
  
  
  stdin := bufio.NewScanner(os.Stdin)
  for i := 0; i < N; i++ { 
    //文字列を入力
    stdin.Scan()
    s[i] = stdin.Text()
    //文字列を１文字ずつ分解
    split := strings.Split(s[i], "")
    //英順に並び替え
    sort.Strings(split)
    //並び替えた文字列を結合
    s[i] = strings.Join(split, "")
    s_[strings.Join(split, "")] = strings.Join(split, "")
    
  }
  ans = 0
  for index, _ := range s_ {
    for i := 0; i < N; i++{
      if(index == s[i]){
      	count++
        fmt.Println(s[i])
      }
    }
    ans = (count*(count -1) / 2) + ans
    count = 0
  }
  fmt.Print(ans)
}