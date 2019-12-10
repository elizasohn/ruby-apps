def title_case(string)
  workingOutput = []
  input = string.split(".")
  sentences = []
  input.each do |inputSentence|
    sentences.push(inputSentence.split(" "))
  end

  sentenceNumber = 0

  sentences.each do |sentence|
    workingOutput.push([])
    sentence.each do |word|
      if word === "for" || word === "if" || word === "of" || word === "in" || word === "the" || word === "at" || word === "on" || word === "is" || word === "a"
        workingOutput[sentenceNumber].push(word)
      else
        workingOutput[sentenceNumber].push(word.capitalize())
      end
    end
    sentenceNumber += 1
  end
  output = []
  workingOutput.each do |sentence|
    output.push(sentence.join(' '))
  end

  outputString = output.join('. ')
  return outputString
end
