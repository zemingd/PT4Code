package main

import(
  "bufio"
  "fmt"
  "os"
  "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
    sc.Scan()
    i, e := strconv.Atoi(sc.Text())
    if e != nil {
        panic(e)
    }
    return i
}

func main(){
  s := nextInt()
  sc.Scan()
  var t string = sc.Text()
  if s >= len(t){
    fmt.Println(t)
  }else{
     fmt.Println(t[0:s] + "...")
  }
 
  
}