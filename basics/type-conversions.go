package main

import (
	"fmt"
	"math"
)

func main() {
	var x, y int = 3, 4
	var f = math.Sqrt(float64(x*x + y*y))
  fmt.Printf("%T %f\n", f, f)
	var z uint = uint(f)
  fmt.Printf("%T %f\n", z, z)
	fmt.Println(x, y, z)
}
