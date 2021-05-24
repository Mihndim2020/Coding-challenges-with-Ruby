def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
  mid = (min_interval + max_interval)/2
  square = mid * mid 
  if square == number
    return mid
  elsif square > number
    max_interval = mid - 1
    return sqrt_recursive(number, min_interval, max_interval)
  elsif square < number
    min_interval = mid + 1
    return sqrt_recursive(number, min_interval, max_interval)
  end 
end

puts sqrt(4)
puts sqrt(7056)
