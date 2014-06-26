// bubblesort
// O(n^2)

import Cocoa

func generateRandomArray(size: Int) -> NSArray {
    
    var randomArray = NSMutableArray()
    
    for i in 1...size {
        
        randomArray.addObject(Int(arc4random_uniform(100)))
    }
    
    return randomArray
}

func bubbleSort(array: Int[]) -> Int[] {
    
    var sorted = false
    
    while (!sorted) {
        
        for var n: Int = 0; n < array.count; ++n {
            
            for var m: Int = 0; m < array.count - 1; ++m {
                
                if (array[m] > array[m+1]) {
                    
                    var temp = array[m]
                    array[m] = array[m+1]
                    array[m+1] = temp
                } else {
                    
                    sorted = true
                }
            }
        }
    }

    return array
}

var array = [68, 57, 69, 3, 1, 58, 89, 34, 95, 54]

bubbleSort(array)
