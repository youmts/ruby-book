def flip_flop(text)
  result = []
  text.lines.map(&:chomp).each do |line|
    if (line == 'いただきます')..(line == 'ごちそうさま')
      result << line
    end
  end
  result.map() {|line| line + $/}.join
end
