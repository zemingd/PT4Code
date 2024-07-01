package main
 
import (
  "fmt"
  "bufio"
  "strings"
  "os"
)

func main() {
  var S []string
  var N int = 0
  var NumberOfSlides = 10
  var Children []int

  var sc = bufio.NewScanner(os.Stdin)

  sc.Scan()
  S = strings.Split(sc.Text(), "")
  N = len(S)
  
  for n := 0; n < N; n++ {
    Children = append(Children, 1)
  }

  for i := 0; i < NumberOfSlides; i++ {
    newChildren := make([]int, N, N)
    for j := 0; j < N; j++ {
      if S[j] == "R" {
        newChildren[j+1] += Children[j]
      } else if S[j] == "L" {
        newChildren[j-1] += Children[j]
      }
    }
    copy(Children, newChildren)
  }
  for i := 0; i < N; i++ {
    fmt.Printf("%d ", Children[i])
  }
}