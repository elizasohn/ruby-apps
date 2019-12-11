def encrypt(read_file, write_file)

  if (key_start > key_end)
    count = key_end
    endpoint = key_start
  elsif (key_start <= key_end)
    count = key_start
    endpoint = key_end
  end
  key = []
  while (count < endpoint) do
    key.push(count)
    count += 1
  end

  key_progression = 0

  plain_text = File.read(read_file)

  array_text = plain_text.split("")

  output_array = []

  array_text.each do |letter|
    output_array.push(shift_letter(key[key_progression], letter))
    key_progression = key_progression + 1
    if (key_progression >= key.length)
      key_progression = 0
    end
  end

  final_text = output_array.join("")

  File.open(write_file, final_text)
end

def shift_letter(shift, letter)
  num = letter.ord
  num = num + shift
  while (num > 255)
    num = num - 255
  end
  output = num.chr

  return output
end
