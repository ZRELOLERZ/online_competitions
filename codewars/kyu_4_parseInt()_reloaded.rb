def add(nums, n)
  i = 0
  a = []
  while i < nums.size
    $current = nums[i]
    $next = 0
    if i != nums.size-1
      $next = nums[i+1]
    end
    $sum = $current + $next
    flag = false
    if $sum < n
      a << $sum
      flag = true
      i += 2
    else
      if flag 
        flag = false
      else
        a << $current
        i += 1
      end
    end
  end
  return a
end

def mul(nums, n)
  a = []
  i = 0
  flag = false
  while i < nums.size
    $current = nums[i]
    $next = nums[i+1]
    if $next == n
      a << $current*$next
      flag = true
      i += 2
    else
      if flag
        flag = false
      else
        a << $current
        i += 1
      end
    end
  end
  return a
end

def parse_int(s)
  d = {
    "zero" => 0,
    "one" => 1,
    "two" => 2,
    "three" => 3,
    "four" => 4,
    "five" => 5,
    "six" => 6,
    "seven" => 7,
    "eight" => 8,
    "nine" => 9,
    "ten" => 10,
    "eleven" => 11,
    "twelve" => 12,
    "thirteen" => 13,
    "fourteen" => 14,
    "fifteen" => 15,
    "sixteen" => 16,
    "seventeen" => 17,
    "eighteen" => 18,
    "nineteen" => 19,
    "twenty" => 20,
    "thirty" => 30,
    "forty" => 40,
    "fifty" => 50,
    "sixty" => 60,
    "seventy" => 70,
    "eighty" => 80,
    "ninety" => 90,
    "hundred" => 100,
    "thousand" => 1000,
    "million" => 1000000,
  }
  s.gsub!(/\band|-/,' ')
  nums = []
  s.split.each{|i| nums << d[i]}
  nums = add(nums, 100)
  nums = mul(nums, 100)
  nums = add(nums, 1000)
  nums = mul(nums, 1000)
  nums = add(nums, 1000000)
  nums = mul(nums, 1000000)
  return nums.sum
end