LETTERS = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
words = File.read('words.txt').gsub('"', '').split(',')

def value(word)
  word.split('').map{|l| LETTERS.find_index(l) + 1 }.inject(:+)
end

word_map = {}

words.each {|w| word_map[w] = value(w) }

def triangle(n)
  0.5*n*(n+1)
end

triangles = (0..19).to_a.map{|i| triangle(i).to_i}

triwords = word_map.select{|k,v| triangles.include? v }

p triwords.length
