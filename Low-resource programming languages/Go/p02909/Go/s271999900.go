package main

import (
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

func nextString() string {
    sc.Scan()
    return sc.Text()
}

func main() {
    buf := make([]byte, 0)
    sc.Buffer(buf, 4000000)
    sc.Split(bufio.ScanWords)
    s := nextString()
    var answer string
    if (s == "Sunny") {
       answer = "Cloudy" 
    }
    if (s == "Cloudy") {
       answer = "Rainy" 
    }
    if (s == "Rainy") {
       answer = "Sunny" 
    }
    
    fmt.Println(answer)
}