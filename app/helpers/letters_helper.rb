module LettersHelper



def set(anEmphasis)
content_array = Sentence.where(:emphasis => anEmphasis)
@num_sentences = content_array.maximum("order")
end 

def entry(anEmphasis, sequence)
sent_array = Sentence.where(
  :emphasis => anEmphasis,
  :order	=> sequence
  )
sentence = sent_array[rand(sent_array.length)]
return sentence.content
end

def getparagraph(anEmphasis)
max = set(anEmphasis)
counter = 1
text = ''
  while counter <= max 
	text += '  ' + entry(anEmphasis, counter)
	counter += 1	
  end   
  return text
end


end
