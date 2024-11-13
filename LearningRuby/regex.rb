frase_de_comparacao="123ABC456B"
resultado =  frase_de_comparacao.scan(/\d+\W*/)

#use the .scan after a string, will be return all the matches from regex
#if we use the normal =~ (to match) or =!(not match) the result it will be if has or not
puts resultado
puts "First element that matched #{resultado[0]}"
#no using grups and puts then.
result_using_groups= frase_de_comparacao.scan(/(\d*\W)(\w\d*)/)
puts result_using_groups
"abc123"=~/(\w)?(\d)/

puts $1
puts $2
puts $3

