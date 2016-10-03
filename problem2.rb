def stretch(input)
  output = []

  input.length.times do |i|
    split_value = input[i] / 2

    # If we've already stretched x input values, then we have
    # 2x elements in our output array, with the most recent at 2x-1
    # (because arrays are indexed from 0)

    # Ternary operator checks whether the value v from the input array
    # is even, and evaluates to v/2 or v/2+1 appropriately
    output[2 * i] = (input[i] % 2 == 0 ? split_value : split_value + 1)

    output[2 * i + 1] = split_value
  end

  return output
end
