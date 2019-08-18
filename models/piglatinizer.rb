class PigLatinizer

	attr_accessor :string

	
	def piglatinize(english)
		words = english.split(' ').compact
		vowels = 'aeiouyAEIOUY'
		words.map do |word|
			pig_latin_word = nil
			#is the first letter a vowel
			if (vowels.include? word[0]) && (word[0] != 'y')
				pig_latin_word = (word + 'way')
			else
				#find the  first vowel not including a leading 'y'
				vowel_index = nil
				word.each_char.with_index do |c, i|
					vowel_index ||= i if ((vowels.include? c)  && (i > 0))
				end
				vowel_index ||= -1
				pig_latin_word = word[vowel_index..-1] + word[0..vowel_index - 1] + 'ay'
			end
			pig_latin_word
		end.join(' ')
	end
end