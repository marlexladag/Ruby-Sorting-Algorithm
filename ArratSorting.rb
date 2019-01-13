# Sorting using Selection
# @param arr (array)
def selectionSort(arr)
    len = arr.length - 1
    
    for i in 0..len
        lowest = i
        for j in (i + 1)..len
            if arr[j].to_i < arr[lowest].to_i
                lowest = j
            end
        end

        temp = arr[i]
        arr[i] = arr[lowest]
        arr[lowest] = temp
    end 
    
    return arr
end

# Sorting using Insertion
# @param arr (array)
def insertionsort(array)
    len = array.length - 1
    
    for i in 1..len
      j = i
        while j > 0
            if array[j].to_i < array[j - 1].to_i
                temp = array[j]
                array[j] = array[j - 1]
                array[j - 1] = temp
            end
        j = j - 1
        end
    end

    return array
end

# Sorting using Quick
# @param arr (array)
def quicksort(array)
    if array.length <= 1
        return array
    end
    pivot = array.delete_at(rand(array.length))

    left = Array.new
    right = Array.new

    array.each do |x|
        if x <= pivot
          left << x
        else
          right << x
        end
    end

    return *quicksort(left), pivot ,*quicksort(right)
end

# Sorting using Shell
# @param arr (array)
def shellsort(arr)
  inc = arr.size / 2
  while inc > 0
    inc.upto(arr.size-1){|i|
      j = i
      temp = arr[i]
      while j >= inc and arr[j-inc] > temp
        arr[j] = arr[j - inc]
        j -= inc
      end
      arr[j] = temp
    }
    inc = (inc==2 ? 1 : inc*10/22)
  end
  
  arr
end

# Sorting using Merge
# @param arr (array)
def mergesort(array)
  if array.length <= 1
    return array
  else
    mid = (array.length / 2).floor
    left = mergesort(array[0..mid-1])
    right = mergesort(array[mid..array.length])
    merge(left, right)
  end
end

def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left[0] < right[0]
    [left[0]] + merge(left[1..left.length], right)
  else
    [right[0]] + merge(left, right[1..right.length])
  end
end

# Sorting using Bubble
# @param arr (array)
def bubbleSort(arr)
    len = arr.length - 1
    
    for i in 0..len
       for j in (i + 1)..len
            if arr[i].to_i < arr[j].to_i
                temp = arr[i].to_i
                arr[i] = arr[j].to_i
                arr[j] = temp
            end
       end
    end
    
    return arr
end