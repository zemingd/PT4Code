package main
 
import (
  "fmt"
  "os"
  "bufio"
  "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextStr() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
    sc.Scan()
    i, e := strconv.Atoi(sc.Text())
    if e != nil {
        panic(e)
    }
    return i
}

func main() {
  sc.Split(bufio.ScanWords)
  A := nextInt()
  B := nextInt()
  C := nextInt()
  
  count := 0
  if A != B {
    count++
  }
  if B != C {
    count++
  }
  if C != A {
    count++
  }
  
  if count == 2 {
    fmt.Println("Yes")
  } else {
    fmt.Println("No")
  }
}
