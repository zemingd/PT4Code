package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solve(ss []string) map[string]int {
  result := map[string]int{"AC": 0, "WA": 0, "TLE": 0, "RE": 0}

  for _, s := range ss {
    result[s] += 1
  }

  return result
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	line1 := scanner.Text()

	n, _ := strconv.Atoi(line1)
  ss := make([]string, 0, n)
  for i := 0; i < n; i++ {
    scanner.Scan()
    l := scanner.Text()
    ss = append(ss, l)
  }

  result := solve(ss)

  fmt.Printf("AC x %d\n", result["AC"])
  fmt.Printf("WA x %d\n", result["WA"])
  fmt.Printf("TLE x %d\n", result["TLE"])
  fmt.Printf("RE x %d\n", result["RE"])
}
