def re_calculate_happiness(number, curr_count)
  curr_val = sum_of_square_digits(number)

  if curr_count == 8
    return false
  end

  if curr_val == 1
    return true
  end

  re_calculate_happiness(curr_val, curr_count + 1)
end


def iter_calculate_happiness(number)
  seen_numbers = []

  number = sum_of_square_digits(number)
  while number != 1 do
    number = sum_of_square_digits(number)

    if seen_numbers[number]
      return false
    end
    seen_numbers[number] = true
  end

  return true
end

def sum_of_square_digits(number)
  number.to_s.split('').map { |digit| digit.to_i ** 2 }.reduce(:+)
end
