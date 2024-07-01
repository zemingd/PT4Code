package main

import(
    "fmt"
)

func keta(n int) int {
    count := 0
    for {
        count++
        n = n/10
        if n < 10 {
            return count + 1
        }
    }
}


func calc(num int, a int, b int, x int) bool {
    if x < a * num + b* keta(num) {
        return false
    }
    return true
}

func main() {
    var a, b, x int
    
    var result int
    fmt.Scan(&a, &b, &x)
    store := 1
    start := 1
    stock := -1
    for i:=1;i < x;i*=10 {
      if calc(i, a, b, x) {
          for j:=i;j < x;j+=i/10 {
              if calc(i, a, b, x) {
                  start = j
                  break
              }
          }
      }
    }
    for i:=start;i < 1000000000;i++ {
        if i % 10 == 0 {
            store = keta(i)
        }
        if x < a * i + b * store {
            result = i - 1
            break
        }
        stock = i
    }
    stock++
    if stock == 1000000000 {
        fmt.Println(1000000000)
        return
    }
    fmt.Println(result)
}
